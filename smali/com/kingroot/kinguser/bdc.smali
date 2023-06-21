.class public Lcom/kingroot/kinguser/bdc;
.super Lcom/kingroot/kinguser/bcy;
.source "SourceFile"


# instance fields
.field private biL:Ljava/lang/String;

.field private desc:Ljava/lang/String;

.field private icon:Landroid/graphics/drawable/Drawable;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/kingroot/kinguser/bcy;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/kingroot/kinguser/bdc;->icon:Landroid/graphics/drawable/Drawable;

    .line 18
    iput-object p2, p0, Lcom/kingroot/kinguser/bdc;->title:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/kingroot/kinguser/bdc;->desc:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/kingroot/kinguser/bdc;->biL:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public Ny()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/kingroot/kinguser/bdc;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public Yo()I
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0xa

    return v0
.end method

.method public Yp()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x2

    return v0
.end method

.method public Yr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/kingroot/kinguser/bdc;->biL:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kingroot/kinguser/bdc;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/kingroot/kinguser/bdc;->title:Ljava/lang/String;

    return-object v0
.end method
