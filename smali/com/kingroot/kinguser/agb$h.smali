.class public Lcom/kingroot/kinguser/agb$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/agb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field akh:Landroid/text/Spanned;

.field aki:Landroid/text/Spanned;

.field akj:Landroid/text/Spanned;


# direct methods
.method private constructor <init>(Landroid/text/Spanned;Landroid/text/Spanned;Landroid/text/Spanned;)V
    .locals 0

    .prologue
    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    iput-object p1, p0, Lcom/kingroot/kinguser/agb$h;->akh:Landroid/text/Spanned;

    .line 326
    iput-object p2, p0, Lcom/kingroot/kinguser/agb$h;->aki:Landroid/text/Spanned;

    .line 327
    iput-object p3, p0, Lcom/kingroot/kinguser/agb$h;->akj:Landroid/text/Spanned;

    .line 328
    return-void
.end method

.method public static a(Landroid/text/Spanned;Landroid/text/Spanned;Landroid/text/Spanned;)Lcom/kingroot/kinguser/agb$h;
    .locals 1

    .prologue
    .line 331
    new-instance v0, Lcom/kingroot/kinguser/agb$h;

    invoke-direct {v0, p0, p1, p2}, Lcom/kingroot/kinguser/agb$h;-><init>(Landroid/text/Spanned;Landroid/text/Spanned;Landroid/text/Spanned;)V

    return-object v0
.end method
