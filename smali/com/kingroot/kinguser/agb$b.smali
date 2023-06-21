.class public Lcom/kingroot/kinguser/agb$b;
.super Lcom/kingroot/kinguser/agb$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/agb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field ajU:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZLcom/kingroot/kinguser/advance/model/AdvancePermModel;)V
    .locals 6

    .prologue
    .line 308
    const/4 v1, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/agb$e;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/kingroot/kinguser/advance/model/AdvancePermModel;Lcom/kingroot/kinguser/agb$1;)V

    .line 309
    iput-boolean p3, p0, Lcom/kingroot/kinguser/agb$b;->ajU:Z

    .line 310
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZLcom/kingroot/kinguser/advance/model/AdvancePermModel;)Lcom/kingroot/kinguser/agb$b;
    .locals 1

    .prologue
    .line 314
    new-instance v0, Lcom/kingroot/kinguser/agb$b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/kingroot/kinguser/agb$b;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZLcom/kingroot/kinguser/advance/model/AdvancePermModel;)V

    return-object v0
.end method
