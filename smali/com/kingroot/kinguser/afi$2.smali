.class Lcom/kingroot/kinguser/afi$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/afi;->a(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ahG:Lcom/kingroot/kinguser/afi;

.field final synthetic ahH:Lcom/kingroot/kinguser/aex$a;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/afi;Lcom/kingroot/kinguser/aex$a;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/kingroot/kinguser/afi$2;->ahG:Lcom/kingroot/kinguser/afi;

    iput-object p2, p0, Lcom/kingroot/kinguser/afi$2;->ahH:Lcom/kingroot/kinguser/aex$a;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 238
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 239
    iget-object v0, p0, Lcom/kingroot/kinguser/afi$2;->ahG:Lcom/kingroot/kinguser/afi;

    iget-object v1, p0, Lcom/kingroot/kinguser/afi$2;->ahH:Lcom/kingroot/kinguser/aex$a;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/afi;->a(Lcom/kingroot/kinguser/afi;Lcom/kingroot/kinguser/aex$a;)V

    .line 240
    return-void
.end method
