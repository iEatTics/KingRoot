.class public Loicq/wlogin_sdk/tools/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(I[BIILjava/util/Map;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Loicq/wlogin_sdk/b/b;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    add-int v2, p2, p3

    if-eq v1, v2, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, v0

    :goto_1
    if-ge v1, p0, :cond_0

    if-lez p3, :cond_0

    invoke-static {p1, p2}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v2

    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x1

    invoke-static {p1, v3}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v5

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, -0x1

    if-ge v4, v5, :cond_2

    const/4 v0, -0x2

    goto :goto_0

    :cond_2
    new-instance v6, Loicq/wlogin_sdk/b/b;

    invoke-direct {v6, v2}, Loicq/wlogin_sdk/b/b;-><init>(I)V

    invoke-virtual {v6, p1, v3, v5}, Loicq/wlogin_sdk/b/b;->a([BII)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {p4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int p2, v3, v5

    sub-int p3, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
