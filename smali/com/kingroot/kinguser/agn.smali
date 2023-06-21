.class public abstract Lcom/kingroot/kinguser/agn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mName:Ljava/lang/String;


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/kingroot/kinguser/agn;->getName()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/kingroot/kinguser/agn;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/agn;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/kingroot/kinguser/agn;->mName:Ljava/lang/String;

    return-object v0
.end method
