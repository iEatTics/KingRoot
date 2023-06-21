.class Lcom/kingroot/kinguser/awt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/awt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private aVk:I

.field final synthetic this$0:Lcom/kingroot/kinguser/awt;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/awt;)V
    .locals 1

    .prologue
    .line 205
    iput-object p1, p0, Lcom/kingroot/kinguser/awt$1;->this$0:Lcom/kingroot/kinguser/awt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/awt$1;->aVk:I

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 211
    if-nez p3, :cond_0

    .line 212
    iget v0, p0, Lcom/kingroot/kinguser/awt$1;->aVk:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/awt$1;->aVk:I

    rem-int/lit8 v0, v0, 0x7

    iput v0, p0, Lcom/kingroot/kinguser/awt$1;->aVk:I

    .line 213
    iget v0, p0, Lcom/kingroot/kinguser/awt$1;->aVk:I

    if-nez v0, :cond_0

    .line 215
    :try_start_0
    const-string v0, "guid"

    invoke-static {}, Lcom/kingroot/kinguser/aav;->getSharkGuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string v0, "kinglib"

    const-string v1, "1.5.1-beta1-2BA5F14C3BF42C33-164-64"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/kingroot/kinguser/abn; {:try_start_0 .. :try_end_0} :catch_1

    .line 223
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/awt$1;->this$0:Lcom/kingroot/kinguser/awt;

    iget-object v0, v0, Lcom/kingroot/kinguser/awt;->alr:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/auc;

    .line 224
    iget v1, v0, Lcom/kingroot/kinguser/auc;->aQX:I

    sparse-switch v1, :sswitch_data_0

    .line 287
    :goto_1
    return-void

    .line 228
    :sswitch_0
    iget-object v0, p0, Lcom/kingroot/kinguser/awt$1;->this$0:Lcom/kingroot/kinguser/awt;

    invoke-static {v0}, Lcom/kingroot/kinguser/awt;->a(Lcom/kingroot/kinguser/awt;)V

    goto :goto_1

    .line 232
    :sswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/awt$1;->this$0:Lcom/kingroot/kinguser/awt;

    invoke-static {v0}, Lcom/kingroot/kinguser/awt;->b(Lcom/kingroot/kinguser/awt;)V

    goto :goto_1

    .line 237
    :sswitch_2
    const/16 v1, 0x22

    iget v0, v0, Lcom/kingroot/kinguser/auc;->aQX:I

    if-ne v1, v0, :cond_1

    .line 238
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->bJ(Z)V

    .line 239
    iget-object v0, p0, Lcom/kingroot/kinguser/awt$1;->this$0:Lcom/kingroot/kinguser/awt;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/awt;->Tw()V

    .line 242
    :cond_1
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 243
    iget-object v1, p0, Lcom/kingroot/kinguser/awt$1;->this$0:Lcom/kingroot/kinguser/awt;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/awt;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/kingroot/kinguser/activitys/SoftwareHelpActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 244
    iget-object v1, p0, Lcom/kingroot/kinguser/awt$1;->this$0:Lcom/kingroot/kinguser/awt;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/awt;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 249
    :goto_2
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18744

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_1

    .line 253
    :sswitch_3
    iget-object v0, p0, Lcom/kingroot/kinguser/awt$1;->this$0:Lcom/kingroot/kinguser/awt;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/awt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bgc;->bp(Landroid/content/Context;)V

    .line 255
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/awt$1;->this$0:Lcom/kingroot/kinguser/awt;

    invoke-static {v1}, Lcom/kingroot/kinguser/awt;->c(Lcom/kingroot/kinguser/awt;)Lcom/kingroot/kinguser/bed;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto :goto_1

    .line 259
    :sswitch_4
    iget-object v1, p0, Lcom/kingroot/kinguser/awt$1;->this$0:Lcom/kingroot/kinguser/awt;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/awt;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, v0, Lcom/kingroot/kinguser/auc;->aRa:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/bgc;->A(Landroid/content/Context;Ljava/lang/String;)V

    .line 260
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070016

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/zj;->b(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 264
    :sswitch_5
    iget-object v0, p0, Lcom/kingroot/kinguser/awt$1;->this$0:Lcom/kingroot/kinguser/awt;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/awt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bgc;->bq(Landroid/content/Context;)V

    .line 265
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18843

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto/16 :goto_1

    .line 269
    :sswitch_6
    iget-object v0, p0, Lcom/kingroot/kinguser/awt$1;->this$0:Lcom/kingroot/kinguser/awt;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/awt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bgc;->br(Landroid/content/Context;)V

    .line 270
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18906

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto/16 :goto_1

    .line 274
    :sswitch_7
    iget-object v0, p0, Lcom/kingroot/kinguser/awt$1;->this$0:Lcom/kingroot/kinguser/awt;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/awt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bgc;->bs(Landroid/content/Context;)V

    .line 275
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18907

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto/16 :goto_1

    .line 279
    :sswitch_8
    iget-object v1, p0, Lcom/kingroot/kinguser/awt$1;->this$0:Lcom/kingroot/kinguser/awt;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/awt;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, v0, Lcom/kingroot/kinguser/auc;->aRa:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/bgc;->A(Landroid/content/Context;Ljava/lang/String;)V

    .line 280
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070012

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/zj;->b(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 245
    :catch_0
    move-exception v0

    goto/16 :goto_2

    .line 217
    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 224
    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_0
        0x10 -> :sswitch_2
        0x13 -> :sswitch_0
        0x22 -> :sswitch_2
        0x25 -> :sswitch_3
        0x26 -> :sswitch_4
        0x27 -> :sswitch_8
        0x29 -> :sswitch_1
        0x2a -> :sswitch_5
        0x2b -> :sswitch_6
        0x2c -> :sswitch_7
    .end sparse-switch
.end method
