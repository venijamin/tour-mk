package finki.dians;

public interface Filter<T> {
    T execute(T input);
}
