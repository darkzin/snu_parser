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
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t7       <bool> %ebp-22 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    movl    $98, %eax               #   0:     if     98 < 99 goto 1
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_1                 
    jmp     l_f0_2                  #   1:     goto   2
l_f0_1:
    movl    $1, %eax                #   3:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $0, %eax                #   6:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   8:     return t3
    jmp     l_f0_exit              
    movl    $1, %eax                #   9:     if     1 = 0 goto 6_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_6_if_true         
    jmp     l_f0_7_if_false         #  10:     goto   7_if_false
l_f0_6_if_true:
l_f0_10_while_cond:
    movl    $99, %eax               #  13:     if     99 = 99 goto 11_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_11_while_body     
    jmp     l_f0_9                  #  14:     goto   9
l_f0_11_while_body:
    jmp     l_f0_10_while_cond      #  16:     goto   10_while_cond
l_f0_9:
l_f0_14_while_cond:
    jmp     l_f0_13                 #  19:     goto   13
    jmp     l_f0_14_while_cond      #  20:     goto   14_while_cond
l_f0_13:
    movl    $0, %eax                #  22:     return 0
    jmp     l_f0_exit              
    movl    $92314, %eax            #  23:     if     92314 <= 88835 goto 18_if_true
    movl    $88835, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_18_if_true        
    jmp     l_f0_19_if_false        #  24:     goto   19_if_false
l_f0_18_if_true:
    jmp     l_f0_17                 #  26:     goto   17
l_f0_19_if_false:
l_f0_17:
    call    dummyBOOLfunc           #  29:     call   t4 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $1, %eax                #  30:     return 1
    jmp     l_f0_exit              
    jmp     l_f0_25_if_false        #  31:     goto   25_if_false
    jmp     l_f0_23                 #  32:     goto   23
l_f0_25_if_false:
l_f0_23:
    call    ReadInt                 #  35:     call   t5 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $32804, %eax            #  36:     if     32804 > 82173 goto 28_if_true
    movl    $82173, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_28_if_true        
    jmp     l_f0_29_if_false        #  37:     goto   29_if_false
l_f0_28_if_true:
    jmp     l_f0_27                 #  39:     goto   27
l_f0_29_if_false:
l_f0_27:
    movl    $61836, %eax            #  42:     if     61836 < 77737 goto 32_if_true
    movl    $77737, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_32_if_true        
    jmp     l_f0_33_if_false        #  43:     goto   33_if_false
l_f0_32_if_true:
    jmp     l_f0_31                 #  45:     goto   31
l_f0_33_if_false:
l_f0_31:
    jmp     l_f0_5                  #  48:     goto   5
l_f0_7_if_false:
l_f0_5:
    call    dummyCHARfunc           #  51:     call   t6 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movl    $99, %eax               #  52:     if     99 <= t6 goto 36
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_36                
    jmp     l_f0_37                 #  53:     goto   37
l_f0_36:
    movl    $1, %eax                #  55:     assign t7 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f0_38                 #  56:     goto   38
l_f0_37:
    movl    $0, %eax                #  58:     assign t7 <- 0
    movb    %al, -22(%ebp)         
l_f0_38:
    movzbl  -22(%ebp), %eax         #  60:     return t7
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 93 of <array 100 of <array 84 of <array 9 of <array 17 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 57 of <array 20 of <array 8 of <array 8 of <array 22 of <int>>>>>>> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_f1_exit              
    movl    $1, %eax                #   1:     assign v1 <- 1
    movb    %al, 12(%ebp)          
l_f1_3_while_cond:
    movl    $59945, %eax            #   3:     if     59945 >= 73502 goto 4_while_body
    movl    $73502, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_4_while_body      
    jmp     l_f1_2                  #   4:     goto   2
l_f1_4_while_body:
    jmp     l_f1_exit              
l_f1_8_while_cond:
    jmp     l_f1_8_while_cond       #   8:     goto   8_while_cond
    jmp     l_f1_exit              
    jmp     l_f1_3_while_cond       #  10:     goto   3_while_cond
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <char> %ebp-15 ]

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
    movl    $100, %eax              #   0:     if     100 >= 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    call    dummyCHARfunc           #   3:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   4:     return t3
    jmp     l_f2_exit              
    jmp     l_f2_0                  #   5:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    dummyCHARfunc           #   8:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   9:     param  0 <- t4
    pushl   %eax                   
    call    WriteChar               #  10:     call   WriteChar
    addl    $4, %esp               
    call    dummyCHARfunc           #  11:     call   t5 <- dummyCHARfunc
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
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]

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
    movl    $87407, %eax            #   1:     if     87407 < 79228 goto 2_while_body
    movl    $79228, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   4:     goto   1_while_cond
l_test_0:
    movl    $99, %eax               #   6:     if     99 < 100 goto 6_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_6_if_true       
    jmp     l_test_7_if_false       #   7:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_exit            
    jmp     l_test_5                #  10:     goto   5
l_test_7_if_false:
l_test_5:
l_test_11_while_cond:
    jmp     l_test_10               #  14:     goto   10
    movl    $74806, %eax            #  15:     assign v0 <- 74806
    movl    %eax, v0               
    jmp     l_test_14               #  16:     goto   14
l_test_14:
    call    ReadInt                 #  18:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_test_11_while_cond    #  19:     goto   11_while_cond
l_test_10:
    call    dummyCHARfunc           #  21:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    call    f0                      #  22:     call   t2 <- f0
    movb    %al, -18(%ebp)         

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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
