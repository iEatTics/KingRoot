.class Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;
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
    .line 147
    iput-object p1, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$2;->this$0:Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 150
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 151
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 152
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/adw;->tm()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$2;->this$0:Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->b(Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;)V

    .line 164
    return-void

    .line 158
    :cond_1
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :catch_0
    move-exception v1

    goto :goto_1
.end method
