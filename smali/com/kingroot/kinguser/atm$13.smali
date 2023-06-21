.class Lcom/kingroot/kinguser/atm$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/atm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/atm;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/atm;)V
    .locals 0

    .prologue
    .line 1080
    iput-object p1, p0, Lcom/kingroot/kinguser/atm$13;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
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
    const/4 v3, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1086
    iget-object v0, p0, Lcom/kingroot/kinguser/atm$13;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v0}, Lcom/kingroot/kinguser/atm;->w(Lcom/kingroot/kinguser/atm;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ame;

    .line 1087
    if-nez v0, :cond_1

    .line 1135
    :cond_0
    :goto_0
    return-void

    .line 1090
    :cond_1
    invoke-interface {v0}, Lcom/kingroot/kinguser/ame;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1094
    :pswitch_0
    instance-of v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    if-eqz v1, :cond_0

    .line 1095
    const/4 v1, 0x0

    .line 1096
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/kingroot/kinguser/atp$c;

    if-eqz v2, :cond_2

    .line 1097
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/atp$c;

    .line 1099
    :cond_2
    if-eqz v1, :cond_0

    .line 1102
    new-array v2, v3, [I

    .line 1103
    new-array v3, v3, [I

    .line 1104
    iget-object v4, v1, Lcom/kingroot/kinguser/atp$c;->awb:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 1105
    invoke-virtual {p2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1107
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1108
    const-string v5, "extra_game_icon_left_i"

    aget v6, v2, v7

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1109
    const-string v5, "extra_game_icon_top_i"

    aget v2, v2, v8

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1110
    const-string v2, "extra_game_icon_width_i"

    iget-object v5, v1, Lcom/kingroot/kinguser/atp$c;->awb:Landroid/widget/ImageView;

    .line 1111
    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    .line 1110
    invoke-virtual {v4, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1112
    const-string v2, "extra_game_icon_height_i"

    iget-object v1, v1, Lcom/kingroot/kinguser/atp$c;->awb:Landroid/widget/ImageView;

    .line 1113
    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    .line 1112
    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1115
    const-string v1, "extra_game_list_item_left_i"

    aget v2, v3, v7

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1117
    const-string v1, "extra_game_list_item_top_i"

    aget v2, v3, v8

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1119
    const-string v1, "extra_game_list_item_width_i"

    .line 1120
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 1119
    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1121
    const-string v1, "extra_game_list_item_height_i"

    .line 1122
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 1121
    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1123
    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    .line 1124
    const-string v1, "extra_game_modle"

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1126
    iget-object v1, p0, Lcom/kingroot/kinguser/atm$13;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/atm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailActivity;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1127
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ady;->eN(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1090
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
