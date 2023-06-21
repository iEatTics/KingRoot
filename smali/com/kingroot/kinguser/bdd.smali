.class public Lcom/kingroot/kinguser/bdd;
.super Lcom/kingroot/kinguser/bcy;
.source "SourceFile"


# instance fields
.field private biM:I

.field private desc:Ljava/lang/String;

.field private icon:Landroid/graphics/drawable/Drawable;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/kingroot/kinguser/bcy;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public Yo()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, -0x1

    return v0
.end method

.method public Yp()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/kingroot/kinguser/bdd;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/kingroot/kinguser/bdd;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleColor()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/kingroot/kinguser/bdd;->biM:I

    return v0
.end method

.method public kK(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/kingroot/kinguser/bdd;->desc:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/kingroot/kinguser/bdd;->icon:Landroid/graphics/drawable/Drawable;

    .line 20
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/kingroot/kinguser/bdd;->title:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setTitleColor(I)V
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lcom/kingroot/kinguser/bdd;->biM:I

    .line 32
    return-void
.end method
