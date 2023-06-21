.class Lcom/kingroot/kinguser/bjd$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bjd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/kingroot/kinguser/bji",
        "<",
        "Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private ahV:Ljava/text/Collator;

.field final synthetic bwa:Lcom/kingroot/kinguser/bjd;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjd;)V
    .locals 1

    .prologue
    .line 592
    iput-object p1, p0, Lcom/kingroot/kinguser/bjd$7;->bwa:Lcom/kingroot/kinguser/bjd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 594
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bjd$7;->ahV:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bji;Lcom/kingroot/kinguser/bji;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingroot/kinguser/bji",
            "<",
            "Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;",
            ">;",
            "Lcom/kingroot/kinguser/bji",
            "<",
            "Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 599
    if-eqz p1, :cond_0

    if-nez p2, :cond_4

    .line 600
    :cond_0
    if-nez p1, :cond_3

    if-nez p2, :cond_2

    const/4 v0, 0x0

    :goto_0
    move v1, v0

    .line 621
    :cond_1
    :goto_1
    return v1

    :cond_2
    move v0, v1

    .line 600
    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    .line 603
    :cond_4
    invoke-virtual {p1}, Lcom/kingroot/kinguser/bji;->isChecked()Z

    move-result v0

    invoke-virtual {p2}, Lcom/kingroot/kinguser/bji;->isChecked()Z

    move-result v3

    if-eq v0, v3, :cond_6

    .line 604
    invoke-virtual {p1}, Lcom/kingroot/kinguser/bji;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_2
    move v1, v2

    goto :goto_1

    :cond_5
    move v2, v1

    goto :goto_2

    .line 607
    :cond_6
    invoke-virtual {p1}, Lcom/kingroot/kinguser/bji;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->vk()Z

    move-result v3

    invoke-virtual {p2}, Lcom/kingroot/kinguser/bji;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->vk()Z

    move-result v0

    if-eq v3, v0, :cond_8

    .line 608
    invoke-virtual {p1}, Lcom/kingroot/kinguser/bji;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 609
    :goto_3
    invoke-virtual {p1}, Lcom/kingroot/kinguser/bji;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->vk()Z

    move-result v0

    if-nez v0, :cond_1

    neg-int v1, v1

    goto :goto_1

    :cond_7
    move v1, v2

    .line 608
    goto :goto_3

    .line 612
    :cond_8
    invoke-virtual {p1}, Lcom/kingroot/kinguser/bji;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->vl()Z

    move-result v3

    invoke-virtual {p2}, Lcom/kingroot/kinguser/bji;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->vl()Z

    move-result v0

    if-eq v3, v0, :cond_a

    .line 613
    invoke-virtual {p1}, Lcom/kingroot/kinguser/bji;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 614
    :goto_4
    invoke-virtual {p1}, Lcom/kingroot/kinguser/bji;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->vl()Z

    move-result v0

    if-eqz v0, :cond_1

    neg-int v1, v1

    goto :goto_1

    :cond_9
    move v1, v2

    .line 613
    goto :goto_4

    .line 617
    :cond_a
    invoke-virtual {p1}, Lcom/kingroot/kinguser/bji;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->isSystem()Z

    move-result v3

    invoke-virtual {p2}, Lcom/kingroot/kinguser/bji;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->isSystem()Z

    move-result v0

    if-eq v3, v0, :cond_b

    .line 618
    invoke-virtual {p1}, Lcom/kingroot/kinguser/bji;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->isSystem()Z

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    goto/16 :goto_1

    .line 621
    :cond_b
    iget-object v1, p0, Lcom/kingroot/kinguser/bjd$7;->ahV:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bji;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/kingroot/kinguser/bji;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 592
    check-cast p1, Lcom/kingroot/kinguser/bji;

    check-cast p2, Lcom/kingroot/kinguser/bji;

    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/bjd$7;->a(Lcom/kingroot/kinguser/bji;Lcom/kingroot/kinguser/bji;)I

    move-result v0

    return v0
.end method
