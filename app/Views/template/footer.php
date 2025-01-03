<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <p>Batería de instrumentos para la evaluación de factores de riesgo psicosocial</p>
                <ul>
                <li><strong>Username:</strong> <?= esc($username) ?></li>    
                <li><strong>Email:</strong> <?= esc($email) ?></li>               
                <?php if ($isAdmin): ?> 
                    <li><strong>Rol:</strong> Administrador</li> 
                <?php elseif ($isDigitador): ?> 
                    <li><strong>Rol:</strong> Digitador</li> 
                    <?php else: ?> 
                        <li><strong>Rol:</strong> No tiene grupo asignado</li> 
                    <?php endif; ?>
                </ul>

            </div>
            <div class="col-md-6 text-right">
                <p>Desarrollado por <strong>@ingenierocvasquez</strong> Todos los derechos reservados</p>
                <p>© 2024 -Todos los derechos reservados. Se prohíbe la copia, redistribución o retransmisión de cualquier material incluido en esta página. Dirección: Urb el Gallo 3 Cll # 36 - 06 Cartagena, Colombia Móvil 300 895 1211 
                </p>
                <p class="label label-default">Página Procesada en {elapsed_time}</p>
            </div>
        </div>
    </div>
</footer>
</body>
</html>
