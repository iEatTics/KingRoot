.class public Lcom/kingroot/kinguser/bcv;
.super Lcom/kingroot/kinguser/bcy;
.source "SourceFile"


# instance fields
.field private desc:Ljava/lang/String;

.field private icon:Landroid/graphics/drawable/Drawable;

.field private title:Ljava/lang/String;


# virtual methods
.method public Ny()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/kingroot/kinguser/bcv;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public Yo()I
    .locals 1

    .prologue
    .line 34
    const/16 v0, 0x14

    return v0
.end method

.method public Yp()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x5

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/kingroot/kinguser/bcv;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/kingroot/kinguser/bcv;->title:Ljava/lang/String;

    return-object v0
.end method
