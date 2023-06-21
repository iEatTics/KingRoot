.class public Lcom/kingroot/kinguser/bcx;
.super Lcom/kingroot/kinguser/bcy;
.source "SourceFile"


# instance fields
.field private biH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private icon:Landroid/graphics/drawable/Drawable;

.field private title:Ljava/lang/String;


# virtual methods
.method public Yo()I
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0x14

    return v0
.end method

.method public Yp()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x4

    return v0
.end method

.method public Yq()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/kingroot/kinguser/bcx;->biH:Ljava/util/List;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/kingroot/kinguser/bcx;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/kingroot/kinguser/bcx;->title:Ljava/lang/String;

    return-object v0
.end method
