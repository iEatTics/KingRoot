.class public abstract Lcom/kingroot/kinguser/cfv;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/cfv$a;,
        Lcom/kingroot/kinguser/cfv$b;
    }
.end annotation


# direct methods
.method public static a(Ljava/io/InputStream;IILcom/kingroot/kinguser/cfv$a;)[B
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 141
    .line 142
    new-array v0, p2, [B

    move v1, p2

    move v2, v3

    .line 145
    :cond_0
    :goto_0
    if-ge v2, p2, :cond_1

    if-lez v1, :cond_1

    .line 146
    invoke-virtual {p0, v0, p1, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 147
    if-gtz v4, :cond_3

    .line 148
    if-eqz p3, :cond_1

    .line 149
    const/4 v1, 0x1

    invoke-interface {p3, v1, v2, p2}, Lcom/kingroot/kinguser/cfv$a;->a(ZII)V

    .line 162
    :cond_1
    if-eq v2, p2, :cond_2

    .line 163
    const/4 v0, 0x0

    .line 165
    :cond_2
    return-object v0

    .line 153
    :cond_3
    add-int/2addr v2, v4

    .line 154
    add-int/2addr p1, v4

    .line 155
    sub-int/2addr v1, v4

    .line 157
    if-eqz p3, :cond_0

    .line 158
    invoke-interface {p3, v3, v2, p2}, Lcom/kingroot/kinguser/cfv$a;->a(ZII)V

    goto :goto_0
.end method
