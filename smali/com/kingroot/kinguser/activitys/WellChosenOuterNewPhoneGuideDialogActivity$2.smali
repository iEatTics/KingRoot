.class Lcom/kingroot/kinguser/activitys/WellChosenOuterNewPhoneGuideDialogActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/activitys/WellChosenOuterNewPhoneGuideDialogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aji:Lcom/kingroot/kinguser/activitys/WellChosenOuterNewPhoneGuideDialogActivity;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/activitys/WellChosenOuterNewPhoneGuideDialogActivity;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/kingroot/kinguser/activitys/WellChosenOuterNewPhoneGuideDialogActivity$2;->aji:Lcom/kingroot/kinguser/activitys/WellChosenOuterNewPhoneGuideDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/WellChosenOuterNewPhoneGuideDialogActivity$2;->aji:Lcom/kingroot/kinguser/activitys/WellChosenOuterNewPhoneGuideDialogActivity;

    iget-object v1, p0, Lcom/kingroot/kinguser/activitys/WellChosenOuterNewPhoneGuideDialogActivity$2;->aji:Lcom/kingroot/kinguser/activitys/WellChosenOuterNewPhoneGuideDialogActivity;

    invoke-static {v1}, Lcom/kingroot/kinguser/activitys/WellChosenOuterNewPhoneGuideDialogActivity;->a(Lcom/kingroot/kinguser/activitys/WellChosenOuterNewPhoneGuideDialogActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/activitys/AppsMarketWellChosenAppsActivity;->f(Landroid/content/Context;I)V

    .line 76
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1892a

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 77
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/WellChosenOuterNewPhoneGuideDialogActivity$2;->aji:Lcom/kingroot/kinguser/activitys/WellChosenOuterNewPhoneGuideDialogActivity;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/activitys/WellChosenOuterNewPhoneGuideDialogActivity;->finish()V

    .line 78
    return-void
.end method
