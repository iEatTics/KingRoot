.class public Lcom/kingroot/kinguser/aub;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public aQT:Z

.field public aQU:I

.field public aQV:I

.field public aQW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/aub;",
            ">;"
        }
    .end annotation
.end field

.field public action:Ljava/lang/String;

.field public alY:Ljava/lang/String;

.field public amD:Landroid/graphics/drawable/Drawable;

.field public appName:Ljava/lang/String;

.field public index:I

.field public time:Ljava/lang/String;

.field public visible:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput v0, p0, Lcom/kingroot/kinguser/aub;->aQU:I

    .line 26
    iput v0, p0, Lcom/kingroot/kinguser/aub;->aQV:I

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/aub;->aQW:Ljava/util/List;

    return-void
.end method
