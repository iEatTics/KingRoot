.class Lcom/kingroot/kinguser/la$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/la;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic uH:Lcom/kingroot/kinguser/la;


# direct methods
.method private constructor <init>(Lcom/kingroot/kinguser/la;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/kingroot/kinguser/la$a;->uH:Lcom/kingroot/kinguser/la;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/la;Lcom/kingroot/kinguser/lb;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/la$a;-><init>(Lcom/kingroot/kinguser/la;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .prologue
    .line 109
    const-class v0, Lcom/kingroot/kinguser/hn;

    invoke-static {v0}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/hn;

    .line 110
    invoke-interface {v0}, Lcom/kingroot/kinguser/hn;->bb()V

    .line 111
    new-instance v0, Lcom/kingroot/kinguser/lc;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/lc;-><init>(Lcom/kingroot/kinguser/la$a;)V

    .line 116
    invoke-virtual {v0}, Lcom/kingroot/kinguser/lc;->ez()Z

    .line 117
    return-void
.end method
