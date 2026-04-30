// Detect if we are in development (Vite port)
const isDevelopment = window.location.port === '5173';

const API_BASE_URL = isDevelopment
    ? `http://${window.location.hostname}:3001`
    : ''; // In production, we use relative paths

export const API_URL = `${API_BASE_URL}/api`;

export default API_BASE_URL;
