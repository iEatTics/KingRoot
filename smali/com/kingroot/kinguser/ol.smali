.class public Lcom/kingroot/kinguser/ol;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/ol$a;
    }
.end annotation


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private yg:Z

.field private yh:Z

.field private yi:Lcom/kingroot/kinguser/cas;

.field private yj:Lcom/kingroot/kinguser/cau;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/ol;->yg:Z

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/ol;->yh:Z

    .line 41
    iput-object v1, p0, Lcom/kingroot/kinguser/ol;->yi:Lcom/kingroot/kinguser/cas;

    .line 48
    iput-object v1, p0, Lcom/kingroot/kinguser/ol;->yj:Lcom/kingroot/kinguser/cau;

    .line 18
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/om;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/kingroot/kinguser/ol;-><init>()V

    return-void
.end method

.method public static fZ()Lcom/kingroot/kinguser/ol;
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/kingroot/kinguser/ol$a;->gg()Lcom/kingroot/kinguser/ol;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public E(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/kingroot/kinguser/ol;->mAppContext:Landroid/content/Context;

    .line 97
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/cas;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/kingroot/kinguser/ol;->yi:Lcom/kingroot/kinguser/cas;

    .line 80
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/cau;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/kingroot/kinguser/ol;->yj:Lcom/kingroot/kinguser/cau;

    .line 114
    return-void
.end method

.method public ga()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ol;->yg:Z

    return v0
.end method

.method public gb()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ol;->yh:Z

    return v0
.end method

.method public gd()Lcom/kingroot/kinguser/cas;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/kingroot/kinguser/ol;->yi:Lcom/kingroot/kinguser/cas;

    return-object v0
.end method

.method public ge()Landroid/content/Context;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/kingroot/kinguser/ol;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public gf()Lcom/kingroot/kinguser/cau;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/kingroot/kinguser/ol;->yj:Lcom/kingroot/kinguser/cau;

    return-object v0
.end method

.method public s(Z)V
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/kingroot/kinguser/ol;->yg:Z

    .line 53
    return-void
.end method

.method public t(Z)V
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/kingroot/kinguser/ol;->yh:Z

    .line 61
    return-void
.end method
