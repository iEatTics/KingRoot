.class Lcom/kingroot/kinguser/activitys/RePackageWarningActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/activitys/RePackageWarningActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aiA:Lcom/kingroot/kinguser/activitys/RePackageWarningActivity;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/activitys/RePackageWarningActivity;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/kingroot/kinguser/activitys/RePackageWarningActivity$2;->aiA:Lcom/kingroot/kinguser/activitys/RePackageWarningActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 59
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1872b

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/RePackageWarningActivity$2;->aiA:Lcom/kingroot/kinguser/activitys/RePackageWarningActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/activitys/RePackageWarningActivity;->a(Lcom/kingroot/kinguser/activitys/RePackageWarningActivity;Z)Z

    .line 62
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/RePackageWarningActivity$2;->aiA:Lcom/kingroot/kinguser/activitys/RePackageWarningActivity;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/activitys/RePackageWarningActivity;->finish()V

    .line 63
    return-void
.end method
