.class Lcom/kingroot/kinguser/bjd$6;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bjd;->a(Lcom/kingroot/kinguser/bji;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bwa:Lcom/kingroot/kinguser/bjd;

.field final synthetic bwk:Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjd;Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;)V
    .locals 0

    .prologue
    .line 544
    iput-object p1, p0, Lcom/kingroot/kinguser/bjd$6;->bwa:Lcom/kingroot/kinguser/bjd;

    iput-object p2, p0, Lcom/kingroot/kinguser/bjd$6;->bwk:Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 547
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 548
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 549
    iget-object v1, p0, Lcom/kingroot/kinguser/bjd$6;->bwk:Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    invoke-static {v0}, Lcom/kingroot/kinguser/bja;->bW(Ljava/util/List;)V

    .line 551
    return-void
.end method
