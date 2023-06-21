.class abstract Lcom/kingroot/kinguser/axg$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/axg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "a"
.end annotation


# instance fields
.field protected aYC:Z

.field final synthetic aYv:Lcom/kingroot/kinguser/axg;


# direct methods
.method private constructor <init>(Lcom/kingroot/kinguser/axg;)V
    .locals 0

    .prologue
    .line 657
    iput-object p1, p0, Lcom/kingroot/kinguser/axg$a;->aYv:Lcom/kingroot/kinguser/axg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/axg;Lcom/kingroot/kinguser/axg$1;)V
    .locals 0

    .prologue
    .line 657
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/axg$a;-><init>(Lcom/kingroot/kinguser/axg;)V

    return-void
.end method


# virtual methods
.method public dv(Z)V
    .locals 0

    .prologue
    .line 661
    iput-boolean p1, p0, Lcom/kingroot/kinguser/axg$a;->aYC:Z

    .line 662
    return-void
.end method
