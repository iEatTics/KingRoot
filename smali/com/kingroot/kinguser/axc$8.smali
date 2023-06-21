.class public Lcom/kingroot/kinguser/axc$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/axc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aXx:Lcom/kingroot/kinguser/axc;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axc;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/kingroot/kinguser/axc$8;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 359
    iget-object v0, p0, Lcom/kingroot/kinguser/axc$8;->aXx:Lcom/kingroot/kinguser/axc;

    iget-object v0, v0, Lcom/kingroot/kinguser/axc;->alr:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/auc;

    .line 361
    iget v0, v0, Lcom/kingroot/kinguser/auc;->aQX:I

    sparse-switch v0, :sswitch_data_0

    .line 455
    :goto_0
    return-void

    .line 364
    :sswitch_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axc$8;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axc;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bat;->l(Landroid/app/Activity;)V

    goto :goto_0

    .line 368
    :sswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/axc$8;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axc;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 369
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kingroot/kinguser/activitys/SoftwareProtectListActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 370
    const-string v2, "software.protect_list.page"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 371
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 388
    :sswitch_2
    invoke-static {}, Lcom/kingroot/kinguser/bhe;->acm()V

    goto :goto_0

    .line 392
    :sswitch_3
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    new-instance v4, Lcom/kingroot/kinguser/axc$8$1;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/axc$8$1;-><init>(Lcom/kingroot/kinguser/axc$8;)V

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto :goto_0

    .line 402
    :sswitch_4
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    new-instance v4, Lcom/kingroot/kinguser/axc$8$2;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/axc$8$2;-><init>(Lcom/kingroot/kinguser/axc$8;)V

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto :goto_0

    .line 423
    :sswitch_5
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    new-instance v4, Lcom/kingroot/kinguser/axc$8$3;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/axc$8$3;-><init>(Lcom/kingroot/kinguser/axc$8;)V

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto :goto_0

    .line 437
    :sswitch_6
    iget-object v0, p0, Lcom/kingroot/kinguser/axc$8;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-static {v0}, Lcom/kingroot/kinguser/axc;->b(Lcom/kingroot/kinguser/axc;)V

    goto :goto_0

    .line 441
    :sswitch_7
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 442
    iget-object v1, p0, Lcom/kingroot/kinguser/axc$8;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/axc;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/kingroot/kinguser/activitys/SuRequestDialogSettingActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 443
    iget-object v1, p0, Lcom/kingroot/kinguser/axc$8;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/axc;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 447
    :sswitch_8
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 448
    iget-object v1, p0, Lcom/kingroot/kinguser/axc$8;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/axc;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/kingroot/kinguser/activitys/SuRequestLogSettingActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 449
    iget-object v1, p0, Lcom/kingroot/kinguser/axc$8;->aXx:Lcom/kingroot/kinguser/axc;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/axc;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 361
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_6
        0x14 -> :sswitch_0
        0x23 -> :sswitch_7
        0x24 -> :sswitch_8
        0x28 -> :sswitch_1
        0x2711 -> :sswitch_2
        0x2715 -> :sswitch_4
        0x2716 -> :sswitch_5
        0x2718 -> :sswitch_3
    .end sparse-switch
.end method
