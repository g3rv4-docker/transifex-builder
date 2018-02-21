git clone https://github.com/g3rv4/Transifex.Frontend.git /var/src/frontend && \
git clone https://github.com/g3rv4/Transifex.Backend.git /var/src/backend

dotnet build -f netcoreapp2.0 -o /var/output/backend /var/src/backend/Transifex.Backend.csproj
npm install --prefix /var/src/frontend
npm run build --prefix /var/src/frontend

mkdir -p /var/output/frontend
cp -r /var/src/frontend/dist/* /var/output/frontend/
