.class Lcom/kingroot/kinguser/activitys/WellChosenOuterNewPhoneGuideDialogActivity$3;
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
    .line 90
    iput-object p1, p0, Lcom/kingroot/kinguser/activitys/WellChosenOuterNewPhoneGuideDialogActivity$3;->aji:Lcom/kingroot/kinguser/activitys/WellChosenOuterNewPhoneGuideDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 93
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1892b

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 94
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/WellChosenOuterNewPhoneGuideDialogActivity$3;->aji:Lcom/kingroot/kinguser/activitys/WellChosenOuterNewPhoneGuideDialogActivity;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/activitys/WellChosenOuterNewPhoneGuideDialogActivity;->finish()V

    .line 95
    return-void
.end method
