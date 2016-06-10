##################################################
# test
#

    #-----------------------------------------
    # text section
    #
    .text
    .align 4

    # entry point and pre-defined functions
    .global main
    .extern DIM
    .extern DOFS
    .extern ReadInt
    .extern WriteInt
    .extern WriteStr
    .extern WriteChar
    .extern WriteLn

    # scope dummyINTfunc
dummyINTfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyINTfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyCHARfunc
dummyCHARfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyCHARfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyBOOLfunc
dummyBOOLfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyBOOLfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyProcedure
dummyProcedure:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyProcedure_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f0
f0:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 44 of <array 40 of <array 48 of <array 100 of <array 7 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 87 of <array 44 of <array 67 of <array 95 of <array 29 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 89 of <array 16 of <array 12 of <array 92 of <array 100 of <bool>>>>>>> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
l_f0_1_while_cond:
    jmp     l_f0_2_while_body       #   1:     goto   2_while_body
    jmp     l_f0_2_while_body       #   2:     goto   2_while_body
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_0:
    call    dummyCHARfunc           #   7:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f0_8_while_cond:
    jmp     l_f0_7                  #   9:     goto   7
    jmp     l_f0_8_while_cond       #  10:     goto   8_while_cond
l_f0_7:

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 38 of <array 93 of <array 12 of <array 20 of <array 34 of <bool>>>>>>> %ebp+8 ]
    #    -14(%ebp)   1  [ $v1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $v2       <bool> %ebp-15 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
l_f1_1_while_cond:
    jmp     l_f1_2_while_body       #   1:     goto   2_while_body
    jmp     l_f1_2_while_body       #   2:     goto   2_while_body
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   4:     goto   1_while_cond
    movl    $99, %eax               #   5:     assign v1 <- 99
    movb    %al, -14(%ebp)         
    jmp     l_f1_11_if_false        #   6:     goto   11_if_false
    movl    $98, %eax               #   7:     if     98 < 100 goto 13
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f1_13                
    jmp     l_f1_14                 #   8:     goto   14
l_f1_13:
    movl    $1, %eax                #  10:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_15                 #  11:     goto   15
l_f1_14:
    movl    $0, %eax                #  13:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f1_15:
    movzbl  -13(%ebp), %eax         #  15:     assign v2 <- t2
    movb    %al, -15(%ebp)         
l_f1_18_while_cond:
    jmp     l_f1_17                 #  17:     goto   17
    jmp     l_f1_18_while_cond      #  18:     goto   18_while_cond
l_f1_17:
l_f1_21_while_cond:
    jmp     l_f1_20                 #  21:     goto   20
    jmp     l_f1_21_while_cond      #  22:     goto   21_while_cond
l_f1_20:
    call    WriteLn                 #  24:     call   WriteLn
l_f1_25_while_cond:
    jmp     l_f1_24                 #  26:     goto   24
    jmp     l_f1_25_while_cond      #  27:     goto   25_while_cond
l_f1_24:
    jmp     l_f1_9                  #  29:     goto   9
l_f1_11_if_false:
l_f1_9:

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 26 of <array 36 of <array 88 of <array 99 of <array 36 of <char>>>>>>> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
    movl    $388, %eax              #   0:     if     388 = 80817 goto 1_if_true
    movl    $80817, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $98, %eax               #   3:     if     98 > 97 goto 5_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_5_if_true         
    jmp     l_f2_6_if_false         #   4:     goto   6_if_false
l_f2_5_if_true:
    jmp     l_f2_4                  #   6:     goto   4
l_f2_6_if_false:
l_f2_4:
    movl    $98, %eax               #   9:     if     98 = 98 goto 9_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_9_if_true         
    jmp     l_f2_10_if_false        #  10:     goto   10_if_false
l_f2_9_if_true:
    jmp     l_f2_8                  #  12:     goto   8
l_f2_10_if_false:
l_f2_8:
    movl    $89697, %eax            #  15:     if     89697 > 91320 goto 13_if_true
    movl    $91320, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_13_if_true        
    jmp     l_f2_14_if_false        #  16:     goto   14_if_false
l_f2_13_if_true:
    jmp     l_f2_18_if_false        #  18:     goto   18_if_false
    jmp     l_f2_16                 #  19:     goto   16
l_f2_18_if_false:
l_f2_16:
l_f2_20_while_cond:
    jmp     l_f2_20_while_cond      #  23:     goto   20_while_cond
l_f2_23_while_cond:
    movl    $0, %eax                #  25:     if     0 = 0 goto 24_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_24_while_body     
    jmp     l_f2_22                 #  26:     goto   22
l_f2_24_while_body:
    jmp     l_f2_23_while_cond      #  28:     goto   23_while_cond
l_f2_22:
    jmp     l_f2_12                 #  30:     goto   12
l_f2_14_if_false:
l_f2_12:
    jmp     l_f2_0                  #  33:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_27_while_cond:
    jmp     l_f2_26                 #  37:     goto   26
l_f2_30_while_cond:
    jmp     l_f2_29                 #  39:     goto   29
    jmp     l_f2_30_while_cond      #  40:     goto   30_while_cond
l_f2_29:
    movl    $56615, %eax            #  42:     if     56615 # 61473 goto 33_if_true
    movl    $61473, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_33_if_true        
    jmp     l_f2_34_if_false        #  43:     goto   34_if_false
l_f2_33_if_true:
    jmp     l_f2_32                 #  45:     goto   32
l_f2_34_if_false:
l_f2_32:
    jmp     l_f2_27_while_cond      #  48:     goto   27_while_cond
l_f2_26:
    call    dummyBOOLfunc           #  50:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
    movl    $95735, %eax            #   0:     if     95735 = 87769 goto 1_if_true
    movl    $87769, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    call    dummyCHARfunc           #   3:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_exit            
    movl    $98, %eax               #   5:     if     98 >= 100 goto 7
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_7               
    jmp     l_test_8                #   6:     goto   8
l_test_7:
    movl    $1, %eax                #   8:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_9                #   9:     goto   9
l_test_8:
    movl    $0, %eax                #  11:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_9:
    movzbl  -14(%ebp), %eax         #  13:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_0                #  14:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $34717, %eax            #  17:     assign v1 <- 34717
    movl    %eax, v1               
    movl    $98, %eax               #  18:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #  19:     call   WriteChar
    addl    $4, %esp               

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # end of text section
    #-----------------------------------------

    #-----------------------------------------
    # global data section
    #
    .data
    .align 4

    # scope: test
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
