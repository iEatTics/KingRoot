.class Lcom/kingroot/kinguser/axq$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingcore/uilib/ClipView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/axq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bbg:Lcom/kingroot/kinguser/axq;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axq;)V
    .locals 0

    .prologue
    .line 897
    iput-object p1, p0, Lcom/kingroot/kinguser/axq$6;->bbg:Lcom/kingroot/kinguser/axq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public gE()V
    .locals 2

    .prologue
    .line 900
    iget-object v0, p0, Lcom/kingroot/kinguser/axq$6;->bbg:Lcom/kingroot/kinguser/axq;

    invoke-static {v0}, Lcom/kingroot/kinguser/axq;->c(Lcom/kingroot/kinguser/axq;)Lcom/kingroot/kinguser/auj$a;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/auj$a;->gQ(I)V

    .line 901
    return-void
.end method
