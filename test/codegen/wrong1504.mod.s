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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 15 of <array 40 of <array 70 of <array 76 of <array 46 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]

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
    movl    $44510, %eax            #   0:     sub    t1 <- 44510, 69289
    movl    $69289, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t2 <- t1, 66746
    movl    $66746, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $63940, %eax            #   2:     if     63940 # t2 goto 4
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_4                 
    jmp     l_f0_5                  #   3:     goto   5
l_f0_4:
    movl    $1, %eax                #   5:     assign t3 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_6                  #   6:     goto   6
l_f0_5:
    movl    $0, %eax                #   8:     assign t3 <- 0
    movb    %al, -21(%ebp)         
l_f0_6:
    movzbl  -21(%ebp), %eax         #  10:     return t3
    jmp     l_f0_exit              
    jmp     l_f0_0                  #  11:     goto   0
l_f0_0:
l_f0_9_while_cond:
    movl    $98, %eax               #  14:     if     98 > 100 goto 10_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f0_10_while_body     
    jmp     l_f0_8                  #  15:     goto   8
l_f0_10_while_body:
l_f0_13_while_cond:
    movl    $100, %eax              #  18:     if     100 < 100 goto 14_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f0_14_while_body     
    jmp     l_f0_12                 #  19:     goto   12
l_f0_14_while_body:
    jmp     l_f0_13_while_cond      #  21:     goto   13_while_cond
l_f0_12:
    movl    $0, %eax                #  23:     return 0
    jmp     l_f0_exit              
    jmp     l_f0_9_while_cond       #  24:     goto   9_while_cond
l_f0_8:
    movl    $1, %eax                #  26:     if     1 = 1 goto 18_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_18_if_true        
    jmp     l_f0_19_if_false        #  27:     goto   19_if_false
l_f0_18_if_true:
    jmp     l_f0_23_if_false        #  29:     goto   23_if_false
    jmp     l_f0_21                 #  30:     goto   21
l_f0_23_if_false:
l_f0_21:
    call    ReadInt                 #  33:     call   t4 <- ReadInt
    movl    %eax, -28(%ebp)        
l_f0_26_while_cond:
    movl    $0, %eax                #  35:     if     0 # 1 goto 27_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_27_while_body     
    jmp     l_f0_25                 #  36:     goto   25
l_f0_27_while_body:
    jmp     l_f0_26_while_cond      #  38:     goto   26_while_cond
l_f0_25:
    movl    $0, %eax                #  40:     return 0
    jmp     l_f0_exit              
    jmp     l_f0_17                 #  41:     goto   17
l_f0_19_if_false:
l_f0_17:

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t2       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t3       <bool> %ebp-18 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 99 of <array 65 of <array 17 of <array 79 of <array 78 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 97 of <array 93 of <array 96 of <array 77 of <array 83 of <char>>>>>>> %ebp+16 ]
    #    -19(%ebp)   1  [ $v3       <bool> %ebp-19 ]

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
    movl    $99, %eax               #   0:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #   1:     call   WriteChar
    addl    $4, %esp               
    movl    $76152, %eax            #   2:     sub    t1 <- 76152, 47762
    movl    $47762, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     if     t1 # 809 goto 2
    movl    $809, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f1_2                 
    jmp     l_f1_3                  #   4:     goto   3
l_f1_2:
    movl    $1, %eax                #   6:     assign t2 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_4                  #   7:     goto   4
l_f1_3:
    movl    $0, %eax                #   9:     assign t2 <- 0
    movb    %al, -17(%ebp)         
l_f1_4:
    movzbl  -17(%ebp), %eax         #  11:     assign v3 <- t2
    movb    %al, -19(%ebp)         
    jmp     l_f1_7                  #  12:     goto   7
    jmp     l_f1_7                  #  13:     goto   7
    jmp     l_f1_7                  #  14:     goto   7
l_f1_7:
    movl    $1, %eax                #  16:     assign t3 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f1_9                  #  17:     goto   9
    movl    $0, %eax                #  18:     assign t3 <- 0
    movb    %al, -18(%ebp)         
l_f1_9:
    movzbl  -18(%ebp), %eax         #  20:     return t3
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 91 of <array 62 of <array 81 of <array 35 of <array 65 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
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
    jmp     l_f2_5_if_false         #   0:     goto   5_if_false
    movl    $99, %eax               #   1:     if     99 = 97 goto 7_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_7_if_true         
    jmp     l_f2_8_if_false         #   2:     goto   8_if_false
l_f2_7_if_true:
    jmp     l_f2_6                  #   4:     goto   6
l_f2_8_if_false:
l_f2_6:
    jmp     l_f2_3                  #   7:     goto   3
l_f2_5_if_false:
l_f2_3:
    jmp     l_f2_0                  #  10:     goto   0
l_f2_0:
l_f2_11_while_cond:
    call    dummyBOOLfunc           #  13:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  14:     if     t1 = 1 goto 12_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_12_while_body     
    jmp     l_f2_10                 #  15:     goto   10
l_f2_12_while_body:
    movl    $0, %eax                #  17:     return 0
    jmp     l_f2_exit              
    jmp     l_f2_11_while_cond      #  18:     goto   11_while_cond
l_f2_10:
    call    dummyBOOLfunc           #  20:     call   t2 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  21:     assign v2 <- t2
    movb    %al, -15(%ebp)         

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]

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
    jmp     l_test_exit            
l_test_2_while_cond:
    movl    $0, %eax                #   2:     if     0 = 0 goto 3_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_3_while_body    
    jmp     l_test_1                #   3:     goto   1
l_test_3_while_body:
    call    dummyINTfunc            #   5:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_test_7_while_cond:
    jmp     l_test_7_while_cond     #   7:     goto   7_while_cond
    jmp     l_test_2_while_cond     #   8:     goto   2_while_cond
l_test_1:
    call    WriteLn                 #  10:     call   WriteLn

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
