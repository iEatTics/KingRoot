.class public Lcom/kingroot/kinguser/xy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/yf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kingroot/kinguser/yf",
        "<",
        "Lcom/kingroot/kinguser/yi;",
        ">;"
    }
.end annotation


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/xy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private UQ:Lcom/kingroot/kinguser/yf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/yf",
            "<",
            "Lcom/kingroot/kinguser/yi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/kingroot/kinguser/xy$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/xy$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/xy;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/xy$1;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/kingroot/kinguser/xy;-><init>()V

    return-void
.end method

.method public static ox()Lcom/kingroot/kinguser/xy;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/kingroot/kinguser/xy;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/xy;

    return-object v0
.end method

.method private oy()Lcom/kingroot/kinguser/yf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kingroot/kinguser/yf",
            "<",
            "Lcom/kingroot/kinguser/yi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/kingroot/kinguser/xy;->UQ:Lcom/kingroot/kinguser/yf;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "SkinManager need set implement"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/xy;->UQ:Lcom/kingroot/kinguser/yf;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/yf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingroot/kinguser/yf",
            "<",
            "Lcom/kingroot/kinguser/yi;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    iput-object p1, p0, Lcom/kingroot/kinguser/xy;->UQ:Lcom/kingroot/kinguser/yf;

    .line 70
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/yg;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/kingroot/kinguser/xy;->oy()Lcom/kingroot/kinguser/yf;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/yf;->a(Lcom/kingroot/kinguser/yg;)V

    .line 51
    return-void
.end method

.method public b(Lcom/kingroot/kinguser/yg;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/kingroot/kinguser/xy;->oy()Lcom/kingroot/kinguser/yf;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/yf;->b(Lcom/kingroot/kinguser/yg;)V

    .line 56
    return-void
.end method

.method public getColor(I)I
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/kingroot/kinguser/xy;->oy()Lcom/kingroot/kinguser/yf;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/yf;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/kingroot/kinguser/xy;->oy()Lcom/kingroot/kinguser/yf;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/yf;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
