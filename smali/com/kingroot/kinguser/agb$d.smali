.class public Lcom/kingroot/kinguser/agb$d;
.super Lcom/kingroot/kinguser/agb$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/agb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public akc:Landroid/text/Spanned;

.field public akd:Z

.field public ake:Lcom/kingroot/kinguser/agb$h;


# direct methods
.method private constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/text/Spanned;ZLcom/kingroot/kinguser/agb$h;Lcom/kingroot/kinguser/advance/model/AdvancePermModel;)V
    .locals 6

    .prologue
    .line 291
    const/4 v1, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/agb$e;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/kingroot/kinguser/advance/model/AdvancePermModel;Lcom/kingroot/kinguser/agb$1;)V

    .line 292
    iput-object p3, p0, Lcom/kingroot/kinguser/agb$d;->akc:Landroid/text/Spanned;

    .line 293
    iput-boolean p4, p0, Lcom/kingroot/kinguser/agb$d;->akd:Z

    .line 294
    iput-object p5, p0, Lcom/kingroot/kinguser/agb$d;->ake:Lcom/kingroot/kinguser/agb$h;

    .line 295
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/text/Spanned;ZLcom/kingroot/kinguser/agb$h;Lcom/kingroot/kinguser/advance/model/AdvancePermModel;)Lcom/kingroot/kinguser/agb$d;
    .locals 7

    .prologue
    .line 299
    new-instance v0, Lcom/kingroot/kinguser/agb$d;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/agb$d;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/text/Spanned;ZLcom/kingroot/kinguser/agb$h;Lcom/kingroot/kinguser/advance/model/AdvancePermModel;)V

    return-object v0
.end method
