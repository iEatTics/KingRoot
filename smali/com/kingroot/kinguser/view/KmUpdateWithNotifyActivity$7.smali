.class Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bid$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->Ug()V
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
    .line 452
    iput-object p1, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$7;->this$0:Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public n(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 456
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$7;->this$0:Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->h(Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bgd;->bt(Landroid/content/Context;)V

    .line 457
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x187e5

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    :goto_0
    return-void

    .line 458
    :catch_0
    move-exception v0

    goto :goto_0
.end method
