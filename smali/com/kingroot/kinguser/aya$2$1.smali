.class Lcom/kingroot/kinguser/aya$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bid$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aya$2;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bcA:Lcom/kingroot/kinguser/aya$2;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aya$2;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/kingroot/kinguser/aya$2$1;->bcA:Lcom/kingroot/kinguser/aya$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public n(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 152
    invoke-static {}, Lcom/kingroot/kinguser/bbo;->Wv()Lcom/kingroot/kinguser/bbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbo;->clearAllLogs()I

    .line 153
    iget-object v0, p0, Lcom/kingroot/kinguser/aya$2$1;->bcA:Lcom/kingroot/kinguser/aya$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/aya$2;->bcz:Lcom/kingroot/kinguser/aya;

    const v1, 0x7f0701fe

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/aya;->a(Lcom/kingroot/kinguser/aya;I)V

    .line 154
    return-void
.end method
