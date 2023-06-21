.class Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$5;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->Ui()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$5;->this$0:Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 311
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 312
    invoke-static {}, Lcom/kingroot/kinguser/ais;->ye()Lcom/kingroot/kinguser/ais;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ais;->dB(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$5;->this$0:Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->b(Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;I)V

    .line 317
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$5;->this$0:Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->b(Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;I)V

    goto :goto_0
.end method
