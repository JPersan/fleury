Before do
end

AfterStep do
    obter_evidencia
end

After do |scenario|
    if scenario.failed?
        obter_evidencia
    end
end