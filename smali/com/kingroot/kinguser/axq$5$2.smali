.class Lcom/kingroot/kinguser/axq$5$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bii$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axq$5;->gE()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bbh:Lcom/kingroot/kinguser/axq$5;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axq$5;)V
    .locals 0

    .prologue
    .line 882
    iput-object p1, p0, Lcom/kingroot/kinguser/axq$5$2;->bbh:Lcom/kingroot/kinguser/axq$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public UD()V
    .locals 2

    .prologue
    .line 885
    iget-object v0, p0, Lcom/kingroot/kinguser/axq$5$2;->bbh:Lcom/kingroot/kinguser/axq$5;

    iget-object v0, v0, Lcom/kingroot/kinguser/axq$5;->bbg:Lcom/kingroot/kinguser/axq;

    invoke-static {v0}, Lcom/kingroot/kinguser/axq;->c(Lcom/kingroot/kinguser/axq;)Lcom/kingroot/kinguser/auj$a;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/auj$a;->gQ(I)V

    .line 886
    return-void
.end method
