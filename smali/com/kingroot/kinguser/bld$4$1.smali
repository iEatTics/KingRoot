.class Lcom/kingroot/kinguser/bld$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bld$4;->afg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingroot/kinguser/bld$4;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bld$4;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/kingroot/kinguser/bld$4$1;->this$1:Lcom/kingroot/kinguser/bld$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x2

    .line 356
    const-string v1, "grc"

    invoke-static {v1}, Lcom/kingroot/kinguser/bhm;->lH(Ljava/lang/String;)I

    move-result v1

    .line 359
    if-eq v1, v0, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 369
    :goto_0
    return-void

    .line 363
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 364
    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1891b

    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/kingroot/kinguser/ady;->a(IILjava/util/List;Z)V

    goto :goto_0
.end method
