import React, { useState, useEffect } from 'react';
import axios from 'axios';
import { API_URL } from '../config';

const UserManagement = () => {
    const [users, setUsers] = useState([]);
    const [nombre_usuario, setNombreUsuario] = useState('');
    const [password, setPassword] = useState('');
    const [rol, setRol] = useState('usuario');
    const [loading, setLoading] = useState(false);
    const [message, setMessage] = useState({ type: '', text: '' });

    useEffect(() => {
        fetchUsers();
    }, []);

    const fetchUsers = async () => {
        try {
            const response = await axios.get(`${API_URL}/auth/users`);
            setUsers(response.data);
        } catch (err) {
            console.error('Error fetching users:', err);
        }
    };

    const handleCreateUser = async (e) => {
        e.preventDefault();
        setLoading(true);
        setMessage({ type: '', text: '' });

        try {
            await axios.post(`${API_URL}/auth/users`, { nombre_usuario, password, rol });
            setMessage({ type: 'success', text: 'Usuario creado con éxito' });
            setNombreUsuario('');
            setPassword('');
            setRol('usuario');
            fetchUsers();
        } catch (err) {
            setMessage({ type: 'error', text: err.response?.data?.error || 'Error al crear usuario' });
        } finally {
            setLoading(false);
        }
    };

    const handleDeleteUser = async (id) => {
        if (!window.confirm('¿Está seguro de eliminar este usuario?')) return;

        try {
            await axios.delete(`${API_URL}/auth/users/${id}`);
            fetchUsers();
        } catch (err) {
            alert(err.response?.data?.error || 'Error al eliminar usuario');
        }
    };

    return (
        <div className="body-content" style={{ overflowY: 'auto', maxHeight: 'calc(100vh - 100px)' }}>
            <h1>Gestión de Usuarios</h1>
            
            <div className="user-form-card">
                <h2>Agregar Nuevo Usuario</h2>
                <form onSubmit={handleCreateUser} className="login-form" style={{ marginTop: '1.5rem' }}>
                    <div className="form-group">
                        <label>Nombre de Usuario</label>
                        <input 
                            type="text" 
                            className="input-field"
                            value={nombre_usuario} 
                            onChange={(e) => setNombreUsuario(e.target.value)} 
                            required 
                        />
                    </div>
                    <div className="form-group">
                        <label>Contraseña</label>
                        <input 
                            type="password" 
                            className="input-field"
                            value={password} 
                            onChange={(e) => setPassword(e.target.value)} 
                            required 
                        />
                    </div>
                    <div className="form-group">
                        <label>Rol</label>
                        <select 
                            className="input-field"
                            value={rol} 
                            onChange={(e) => setRol(e.target.value)}
                        >
                            <option value="usuario">Usuario</option>
                            <option value="admin">Administrador</option>
                            <option value="superadmin">Super Administrador</option>
                        </select>
                    </div>

                    {message.text && (
                        <div className={message.type === 'success' ? 'success-msg' : 'login-error'}>
                            {message.text}
                        </div>
                    )}

                    <button type="submit" className="btn btn-primary" disabled={loading} style={{ width: '100%' }}>
                        {loading ? 'Creando...' : 'Crear Usuario'}
                    </button>
                </form>
            </div>

            <div className="users-list-card">
                <h2>Usuarios Existentes</h2>
                <table className="user-table">
                    <thead>
                        <tr>
                            <th>Usuario</th>
                            <th>Rol</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        {users.map(u => (
                            <tr key={u.id}>
                                <td>{u.nombre_usuario}</td>
                                <td>
                                    <span className={`role-badge ${u.rol}`}>
                                        {u.rol}
                                    </span>
                                </td>
                                <td>
                                    <button 
                                        onClick={() => handleDeleteUser(u.id)}
                                        className="delete-btn"
                                    >
                                        Eliminar
                                    </button>
                                </td>
                            </tr>
                        ))}
                    </tbody>
                </table>
            </div>
        </div>
    );
};

export default UserManagement;
