.class Lcom/kingroot/kinguser/brq$5$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/brq$5;->c(Landroid/util/SparseArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bKB:Lcom/kingroot/kinguser/brq$5;

.field private final synthetic bKD:Ljava/util/List;

.field private final synthetic bKE:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/brq$5;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kingroot/kinguser/brq$5$2;->bKB:Lcom/kingroot/kinguser/brq$5;

    iput-object p2, p0, Lcom/kingroot/kinguser/brq$5$2;->bKD:Ljava/util/List;

    iput-object p3, p0, Lcom/kingroot/kinguser/brq$5$2;->bKE:Ljava/util/List;

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 291
    const-string v0, "\u5220\u9664\u548c\u66f4\u65b0\u672c\u5730\u6570\u636e\u5e93\u76f8\u5173\u6570\u636e  begin"

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->i(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/kingroot/kinguser/brq$5$2;->bKD:Ljava/util/List;

    invoke-static {v0}, Lcom/kingroot/kinguser/btf;->cn(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    invoke-static {}, Lcom/kingroot/kinguser/brs;->ahJ()Lcom/kingroot/kinguser/brs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/brs;->ahK()Lcom/kingroot/kinguser/bsd;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/brq$5$2;->bKD:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bsd;->cm(Ljava/util/List;)V

    .line 295
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/brs;->ahJ()Lcom/kingroot/kinguser/brs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/brs;->ahK()Lcom/kingroot/kinguser/bsd;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/brq$5$2;->bKE:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bsd;->cl(Ljava/util/List;)V

    .line 296
    const-string v0, "\u65b0\u6570\u636e\u4e0a\u62a5  begin"

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->i(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/kingroot/kinguser/brq$5$2;->bKB:Lcom/kingroot/kinguser/brq$5;

    invoke-static {v0}, Lcom/kingroot/kinguser/brq$5;->a(Lcom/kingroot/kinguser/brq$5;)Lcom/kingroot/kinguser/brq;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/brq;->a(Lcom/kingroot/kinguser/brq;)Lcom/kingroot/kinguser/brz;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/brq$5$2;->bKE:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/brz;->cd(Ljava/util/List;)V

    .line 298
    return-void
.end method
