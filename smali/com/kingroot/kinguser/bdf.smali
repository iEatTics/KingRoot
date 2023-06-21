.class public Lcom/kingroot/kinguser/bdf;
.super Lcom/kingroot/kinguser/bcy;
.source "SourceFile"


# instance fields
.field private akd:Z

.field private biQ:Ljava/lang/String;

.field private icon:Landroid/graphics/drawable/Drawable;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/kingroot/kinguser/bcy;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/kingroot/kinguser/bdf;->icon:Landroid/graphics/drawable/Drawable;

    .line 17
    iput-object p2, p0, Lcom/kingroot/kinguser/bdf;->title:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/kingroot/kinguser/bdf;->biQ:Ljava/lang/String;

    .line 19
    iput-boolean p4, p0, Lcom/kingroot/kinguser/bdf;->akd:Z

    .line 20
    return-void
.end method


# virtual methods
.method public Yo()I
    .locals 1

    .prologue
    .line 45
    const/16 v0, 0x1e

    return v0
.end method

.method public Yp()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x6

    return v0
.end method

.method public Yu()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/kingroot/kinguser/bdf;->biQ:Ljava/lang/String;

    return-object v0
.end method

.method public dG(Z)V
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/kingroot/kinguser/bdf;->akd:Z

    .line 36
    return-void
.end method

.method public gI()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/kingroot/kinguser/bdf;->akd:Z

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/kingroot/kinguser/bdf;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/kingroot/kinguser/bdf;->title:Ljava/lang/String;

    return-object v0
.end method
