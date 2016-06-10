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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t6       <bool> %ebp-16 ]

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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
l_f0_4_while_cond:
    movl    $98, %eax               #   2:     if     98 < 98 goto 5_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_5_while_body      
    jmp     l_f0_3                  #   3:     goto   3
l_f0_5_while_body:
    movl    $0, %eax                #   5:     return 0
    jmp     l_f0_exit              
    movl    $99, %eax               #   6:     if     99 >= 99 goto 9
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_9                 
    jmp     l_f0_10                 #   7:     goto   10
l_f0_9:
    movl    $1, %eax                #   9:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_11                 #  10:     goto   11
l_f0_10:
    movl    $0, %eax                #  12:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f0_11:
    movzbl  -13(%ebp), %eax         #  14:     return t3
    jmp     l_f0_exit              
    jmp     l_f0_4_while_cond       #  15:     goto   4_while_cond
l_f0_3:
    jmp     l_f0_0                  #  17:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyBOOLfunc           #  20:     call   t4 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    call    dummyBOOLfunc           #  21:     call   t5 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  22:     if     t5 = 1 goto 18
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_18                
    jmp     l_f0_16                 #  23:     goto   16
l_f0_18:
    movl    $1, %eax                #  25:     assign t6 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f0_17                 #  26:     goto   17
l_f0_16:
    movl    $0, %eax                #  28:     assign t6 <- 0
    movb    %al, -16(%ebp)         
l_f0_17:
    movzbl  -16(%ebp), %eax         #  30:     return t6
    jmp     l_f0_exit              

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
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 8 of <array 2 of <array 3 of <array 5 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #    -28(%ebp)   4  [ $v4       <int> %ebp-28 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    movl    $67628, %eax            #   0:     assign v4 <- 67628
    movl    %eax, -28(%ebp)        
    jmp     l_f1_0                  #   1:     goto   0
l_f1_0:
    jmp     l_f1_7_if_true          #   3:     goto   7_if_true
    jmp     l_f1_7_if_true          #   4:     goto   7_if_true
l_f1_7_if_true:
    jmp     l_f1_6                  #   6:     goto   6
l_f1_6:
l_f1_13_while_cond:
    movl    $60843, %eax            #   9:     mul    t3 <- 60843, 8322
    movl    $8322, %ebx            
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  10:     div    t4 <- t3, 19772
    movl    $19772, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     mul    t5 <- t4, 22963
    movl    $22963, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $71290, %eax            #  12:     if     71290 < t5 goto 14_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_14_while_body     
    jmp     l_f1_12                 #  13:     goto   12
l_f1_14_while_body:
    jmp     l_f1_13_while_cond      #  15:     goto   13_while_cond
l_f1_12:

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 3 of <array 2 of <array 8 of <array 10 of <int>>>>>>> %ebp+12 ]

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
    call    f0                      #   0:     call   t3 <- f0
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   1:     return 99
    jmp     l_f2_exit              
l_f2_6_while_cond:
    movl    $100, %eax              #   3:     if     100 # 100 goto 7_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f2_7_while_body      
    jmp     l_f2_5                  #   4:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #   6:     goto   6_while_cond
l_f2_5:
    movl    $100, %eax              #   8:     return 100
    jmp     l_f2_exit              
    movl    $98, %eax               #   9:     return 98
    jmp     l_f2_exit              
    jmp     l_f2_11                 #  10:     goto   11
l_f2_11:
    jmp     l_f2_2                  #  12:     goto   2
l_f2_2:

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]

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
l_test_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t0 = 1 goto 3
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_3               
    jmp     l_test_0                #   3:     goto   0
l_test_3:
    jmp     l_test_1_while_cond     #   5:     goto   1_while_cond
l_test_0:
    movl    $17958, %eax            #   7:     assign v0 <- 17958
    movl    %eax, v0               
    movl    $22621, %eax            #   8:     assign v0 <- 22621
    movl    %eax, v0               
    call    dummyBOOLfunc           #   9:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_4                #  10:     goto   4
l_test_4:
l_test_11_while_cond:
    jmp     l_test_10               #  13:     goto   10
    call    dummyBOOLfunc           #  14:     call   t2 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    jmp     l_test_11_while_cond    #  15:     goto   11_while_cond
l_test_10:
    call    dummyProcedure          #  17:     call   dummyProcedure
    jmp     l_test_exit            
    jmp     l_test_19_if_false      #  19:     goto   19_if_false
    movl    $31062, %eax            #  20:     if     31062 = 20887 goto 21_if_true
    movl    $20887, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_21_if_true      
    jmp     l_test_22_if_false      #  21:     goto   22_if_false
l_test_21_if_true:
    jmp     l_test_20               #  23:     goto   20
l_test_22_if_false:
l_test_20:
    jmp     l_test_26_if_false      #  26:     goto   26_if_false
    jmp     l_test_24               #  27:     goto   24
l_test_26_if_false:
l_test_24:
    jmp     l_test_exit            
    jmp     l_test_17               #  31:     goto   17
l_test_19_if_false:
l_test_17:

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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
