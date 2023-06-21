.class public Lcom/kingroot/kinguser/aga$c;
.super Lcom/kingroot/kinguser/aga$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aga;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field ajD:Z

.field public ajE:Z

.field public ajF:Z

.field desc:Ljava/lang/String;

.field icon:Landroid/graphics/drawable/Drawable;

.field isSystem:Z

.field public name:Ljava/lang/String;

.field packageName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/kingroot/kinguser/aga$a;-><init>()V

    .line 154
    const/4 v0, 0x2

    iput v0, p0, Lcom/kingroot/kinguser/aga$c;->type:I

    .line 155
    iput-object p1, p0, Lcom/kingroot/kinguser/aga$c;->packageName:Ljava/lang/String;

    .line 156
    iput-object p2, p0, Lcom/kingroot/kinguser/aga$c;->icon:Landroid/graphics/drawable/Drawable;

    .line 157
    iput-object p3, p0, Lcom/kingroot/kinguser/aga$c;->name:Ljava/lang/String;

    .line 158
    iput-object p4, p0, Lcom/kingroot/kinguser/aga$c;->desc:Ljava/lang/String;

    .line 159
    iput-boolean p5, p0, Lcom/kingroot/kinguser/aga$c;->ajD:Z

    .line 160
    iput-boolean p6, p0, Lcom/kingroot/kinguser/aga$c;->isSystem:Z

    .line 161
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/kingroot/kinguser/aga$c;
    .locals 7

    .prologue
    .line 164
    new-instance v0, Lcom/kingroot/kinguser/aga$c;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/aga$c;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v0
.end method
