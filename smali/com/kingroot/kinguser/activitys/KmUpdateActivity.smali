.class public Lcom/kingroot/kinguser/activitys/KmUpdateActivity;
.super Lcom/kingroot/kinguser/activitys/KUBaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/kingroot/kinguser/activitys/KUBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public oC()Lcom/kingroot/kinguser/ym;
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/kingroot/kinguser/axk;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axk;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
