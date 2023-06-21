.class Lcom/kingroot/kinguser/acq$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/acq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic abb:Lcom/kingroot/kinguser/acq;

.field abc:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field abd:Ljava/lang/Integer;

.field mData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field mInfo:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field mType:I


# direct methods
.method private constructor <init>(Lcom/kingroot/kinguser/acq;)V
    .locals 0

    .prologue
    .line 461
    iput-object p1, p0, Lcom/kingroot/kinguser/acq$a;->abb:Lcom/kingroot/kinguser/acq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/acq;Lcom/kingroot/kinguser/acq$1;)V
    .locals 0

    .prologue
    .line 461
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/acq$a;-><init>(Lcom/kingroot/kinguser/acq;)V

    return-void
.end method
