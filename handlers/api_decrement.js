export async function Dec(decrement){
    let count = await decrement();
    return {
        status: 200,
        body: JSON.stringify({count: count})
    }
}
