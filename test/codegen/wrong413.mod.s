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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 9 of <array 1 of <array 9 of <array 1 of <array 6 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 9 of <array 5 of <array 6 of <array 3 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 6 of <array 9 of <array 9 of <array 6 of <array 1 of <bool>>>>>>> %ebp+20 ]

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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_exit              
    call    WriteLn                 #   2:     call   WriteLn

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t7       <char> %ebp-29 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #    -30(%ebp)   1  [ $v2       <bool> %ebp-30 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f1_1_while_cond:
    movl    $61835, %eax            #   1:     if     61835 < 24564 goto 2_while_body
    movl    $24564, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    movl    $0, %eax                #   4:     return 0
    jmp     l_f1_exit              
l_f1_6_while_cond:
    jmp     l_f1_6_while_cond       #   6:     goto   6_while_cond
    movl    $17856, %eax            #   7:     sub    t3 <- 17856, 7270
    movl    $7270, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   8:     if     t3 >= 10476 goto 9
    movl    $10476, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_9                 
    jmp     l_f1_10                 #   9:     goto   10
l_f1_9:
    movl    $1, %eax                #  11:     assign t4 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_11                 #  12:     goto   11
l_f1_10:
    movl    $0, %eax                #  14:     assign t4 <- 0
    movb    %al, -17(%ebp)         
l_f1_11:
    movzbl  -17(%ebp), %eax         #  16:     assign v2 <- t4
    movb    %al, -30(%ebp)         
    jmp     l_f1_1_while_cond       #  17:     goto   1_while_cond
l_f1_0:
    movl    $61043, %eax            #  19:     mul    t5 <- 61043, 58609
    movl    $58609, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $65169, %eax            #  20:     sub    t6 <- 65169, t5
    movl    -24(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  21:     assign v1 <- t6
    movl    %eax, 12(%ebp)         
    movl    $1, %eax                #  22:     if     1 = 0 goto 15_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_15_if_true        
    jmp     l_f1_16_if_false        #  23:     goto   16_if_false
l_f1_15_if_true:
    jmp     l_f1_20_if_false        #  25:     goto   20_if_false
    jmp     l_f1_18                 #  26:     goto   18
l_f1_20_if_false:
l_f1_18:
l_f1_22_while_cond:
    movl    $52756, %eax            #  30:     if     52756 > 66528 goto 23_while_body
    movl    $66528, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_23_while_body     
    jmp     l_f1_21                 #  31:     goto   21
l_f1_23_while_body:
    jmp     l_f1_22_while_cond      #  33:     goto   22_while_cond
l_f1_21:
l_f1_26_while_cond:
    movl    $50365, %eax            #  36:     if     50365 < 14975 goto 27_while_body
    movl    $14975, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_27_while_body     
    jmp     l_f1_25                 #  37:     goto   25
l_f1_27_while_body:
    jmp     l_f1_26_while_cond      #  39:     goto   26_while_cond
l_f1_25:
    call    dummyCHARfunc           #  41:     call   t7 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    movl    $100, %eax              #  42:     assign v0 <- 100
    movb    %al, 8(%ebp)           
    jmp     l_f1_14                 #  43:     goto   14
l_f1_16_if_false:
l_f1_14:

l_f1_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 1 of <array 1 of <array 4 of <array 2 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 4 of <array 2 of <array 1 of <array 6 of <bool>>>>>>> %ebp+12 ]

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
l_f2_1_while_cond:
    movl    $100, %eax              #   1:     if     100 <= 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   4:     goto   1_while_cond
l_f2_0:
    movl    $99, %eax               #   6:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #   7:     call   WriteChar
    addl    $4, %esp               
    movl    $6605, %eax             #   8:     if     6605 < 38260 goto 6_if_true
    movl    $38260, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_6_if_true         
    jmp     l_f2_7_if_false         #   9:     goto   7_if_false
l_f2_6_if_true:
    call    ReadInt                 #  11:     call   t3 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $99, %eax               #  12:     if     99 # 100 goto 14_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f2_14_if_true        
    jmp     l_f2_15_if_false        #  13:     goto   15_if_false
l_f2_14_if_true:
    jmp     l_f2_13                 #  15:     goto   13
l_f2_15_if_false:
l_f2_13:
    jmp     l_f2_9                  #  18:     goto   9
l_f2_9:
    jmp     l_f2_5                  #  20:     goto   5
l_f2_7_if_false:
l_f2_5:

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
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
l_test_1_while_cond:
    movl    $28657, %eax            #   1:     if     28657 > 13723 goto 4_if_true
    movl    $13723, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_4_if_true       
    jmp     l_test_5_if_false       #   2:     goto   5_if_false
l_test_4_if_true:
    jmp     l_test_3                #   4:     goto   3
l_test_5_if_false:
l_test_3:
    call    dummyCHARfunc           #   7:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $44048, %eax            #   8:     if     44048 < 18274 goto 9
    movl    $18274, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_9               
    jmp     l_test_10               #   9:     goto   10
l_test_9:
    movl    $1, %eax                #  11:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_11               #  12:     goto   11
l_test_10:
    movl    $0, %eax                #  14:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_11:
    movzbl  -14(%ebp), %eax         #  16:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_1_while_cond     #  17:     goto   1_while_cond
    movl    $99, %eax               #  18:     assign v1 <- 99
    movb    %al, v1                
    call    dummyINTfunc            #  19:     call   t2 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_test_13               #  20:     goto   13
l_test_13:
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
