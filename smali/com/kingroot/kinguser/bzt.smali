.class public Lcom/kingroot/kinguser/bzt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static bVU:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput v0, Lcom/kingroot/kinguser/bzt;->bVU:I

    return-void
.end method

.method public static ge()Landroid/content/Context;
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
