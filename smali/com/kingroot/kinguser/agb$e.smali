.class public Lcom/kingroot/kinguser/agb$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/agb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public akf:Z

.field public akg:Lcom/kingroot/kinguser/advance/model/AdvancePermModel;

.field public icon:Landroid/graphics/drawable/Drawable;

.field public name:Ljava/lang/String;

.field public type:I


# direct methods
.method private constructor <init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/kingroot/kinguser/advance/model/AdvancePermModel;)V
    .locals 0

    .prologue
    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    iput p1, p0, Lcom/kingroot/kinguser/agb$e;->type:I

    .line 275
    iput-object p2, p0, Lcom/kingroot/kinguser/agb$e;->icon:Landroid/graphics/drawable/Drawable;

    .line 276
    iput-object p3, p0, Lcom/kingroot/kinguser/agb$e;->name:Ljava/lang/String;

    .line 277
    iput-object p4, p0, Lcom/kingroot/kinguser/agb$e;->akg:Lcom/kingroot/kinguser/advance/model/AdvancePermModel;

    .line 278
    return-void
.end method

.method synthetic constructor <init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/kingroot/kinguser/advance/model/AdvancePermModel;Lcom/kingroot/kinguser/agb$1;)V
    .locals 0

    .prologue
    .line 262
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kingroot/kinguser/agb$e;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/kingroot/kinguser/advance/model/AdvancePermModel;)V

    return-void
.end method
