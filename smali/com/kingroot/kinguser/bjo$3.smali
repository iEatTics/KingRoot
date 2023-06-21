.class Lcom/kingroot/kinguser/bjo$3;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bjo;->a(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ahH:Lcom/kingroot/kinguser/aex$a;

.field final synthetic bxv:Lcom/kingroot/kinguser/bjo;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjo;Lcom/kingroot/kinguser/aex$a;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/kingroot/kinguser/bjo$3;->bxv:Lcom/kingroot/kinguser/bjo;

    iput-object p2, p0, Lcom/kingroot/kinguser/bjo$3;->ahH:Lcom/kingroot/kinguser/aex$a;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 231
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 232
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo$3;->bxv:Lcom/kingroot/kinguser/bjo;

    iget-object v1, p0, Lcom/kingroot/kinguser/bjo$3;->ahH:Lcom/kingroot/kinguser/aex$a;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bjo;->a(Lcom/kingroot/kinguser/bjo;Lcom/kingroot/kinguser/aex$a;)V

    .line 233
    return-void
.end method
