.class public final Lcom/kingroot/kinguser/bpx;
.super Lcom/kingroot/kinguser/bqb;
.source "SourceFile"


# static fields
.field public static final bIc:Lcom/kingroot/kinguser/bpx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/kingroot/kinguser/bpx;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bpx;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bpx;->bIc:Lcom/kingroot/kinguser/bpx;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/kingroot/kinguser/bqb;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 27
    sparse-switch p1, :sswitch_data_0

    .line 64
    :goto_0
    return-void

    .line 31
    :sswitch_0
    invoke-static {p5, p6, p7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 36
    :sswitch_1
    invoke-static {p5, p6, p7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 41
    :sswitch_2
    invoke-static {p5, p6, p7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 46
    :sswitch_3
    invoke-static {p5, p6, p7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 51
    :sswitch_4
    invoke-static {p5, p6, p7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 58
    :sswitch_5
    invoke-static {p5, p6, p7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 27
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
    .end sparse-switch
.end method
