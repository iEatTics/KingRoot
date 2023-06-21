.class final Lcom/kingroot/kinguser/bzi$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cgd$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bzi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 948
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/kingroot/kinguser/cgd$c;)V
    .locals 2

    .prologue
    .line 957
    invoke-static {}, Lcom/kingroot/kinguser/bzi;->akh()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cgd$a;

    .line 958
    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/cgd$a;->a(Lcom/kingroot/kinguser/cgd$c;)V

    goto :goto_0

    .line 960
    :cond_0
    return-void
.end method

.method public final a(Lcom/kingroot/kinguser/cgd$c;I)V
    .locals 2

    .prologue
    .line 951
    invoke-static {}, Lcom/kingroot/kinguser/bzi;->akh()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cgd$a;

    .line 952
    invoke-interface {v0, p1, p2}, Lcom/kingroot/kinguser/cgd$a;->a(Lcom/kingroot/kinguser/cgd$c;I)V

    goto :goto_0

    .line 954
    :cond_0
    return-void
.end method

.method public final b(Lcom/kingroot/kinguser/cgd$c;)V
    .locals 2

    .prologue
    .line 963
    invoke-static {}, Lcom/kingroot/kinguser/bzi;->akh()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cgd$a;

    .line 964
    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/cgd$a;->b(Lcom/kingroot/kinguser/cgd$c;)V

    goto :goto_0

    .line 966
    :cond_0
    return-void
.end method
