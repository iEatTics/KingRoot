.class public Lcom/kingroot/kinguser/adm$5;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/adm;->sN()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic adc:Lcom/kingroot/kinguser/adm;

.field public final synthetic ade:Lcom/kingroot/kinguser/akl;

.field public final synthetic adf:J

.field public final synthetic adg:I


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/adm;Lcom/kingroot/kinguser/akl;JI)V
    .locals 1

    .prologue
    .line 1821
    iput-object p1, p0, Lcom/kingroot/kinguser/adm$5;->adc:Lcom/kingroot/kinguser/adm;

    iput-object p2, p0, Lcom/kingroot/kinguser/adm$5;->ade:Lcom/kingroot/kinguser/akl;

    iput-wide p3, p0, Lcom/kingroot/kinguser/adm$5;->adf:J

    iput p5, p0, Lcom/kingroot/kinguser/adm$5;->adg:I

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1824
    invoke-static {}, Lcom/kingroot/kinguser/alm;->GQ()Lcom/kingroot/kinguser/asy;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/asy;->GT()Ljava/util/ArrayList;

    move-result-object v0

    .line 1825
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/amz;->IL()Ljava/util/List;

    move-result-object v1

    .line 1826
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1893
    :cond_0
    :goto_0
    return-void

    .line 1829
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kingmaster/framework/module/ui/AttentionHelper$6$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kingmaster/framework/module/ui/AttentionHelper$6$1;-><init>(Lcom/kingroot/kinguser/adm$5;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/amz;->a(Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppHistoryListener;)V

    goto :goto_0
.end method
