.class Landroid/widget/TimePickerClockDelegate$5;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePickerClockDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TimePickerClockDelegate;


# direct methods
.method constructor <init>(Landroid/widget/TimePickerClockDelegate;)V
    .locals 0

    .line 1001
    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate$5;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1004
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$5;->this$0:Landroid/widget/TimePickerClockDelegate;

    iget-object p0, p0, Landroid/widget/TimePickerClockDelegate$5;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {p0}, Landroid/widget/TimePickerClockDelegate;->access$900(Landroid/widget/TimePickerClockDelegate;)Lcom/android/internal/widget/NumericTextView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/widget/NumericTextView;->getValue()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TimePickerClockDelegate;->setHour(I)V

    return-void
.end method
