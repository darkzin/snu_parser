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
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 59 of <array 57 of <array 23 of <array 69 of <array 56 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #    -21(%ebp)   1  [ $v4       <bool> %ebp-21 ]

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
    jmp     l_f0_1                  #   0:     goto   1
    jmp     l_f0_2                  #   1:     goto   2
l_f0_1:
    movl    $1, %eax                #   3:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $0, %eax                #   6:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v4 <- t3
    movb    %al, -21(%ebp)         
    jmp     l_f0_8                  #   9:     goto   8
    jmp     l_f0_8                  #  10:     goto   8
    jmp     l_f0_8                  #  11:     goto   8
    jmp     l_f0_8                  #  12:     goto   8
    jmp     l_f0_8                  #  13:     goto   8
    jmp     l_f0_9                  #  14:     goto   9
l_f0_8:
    movl    $1, %eax                #  16:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_10                 #  17:     goto   10
l_f0_9:
    movl    $0, %eax                #  19:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f0_10:
    movzbl  -14(%ebp), %eax         #  21:     return t4
    jmp     l_f0_exit              
    call    ReadInt                 #  22:     call   t5 <- ReadInt
    movl    %eax, -20(%ebp)        

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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #    -20(%ebp)   4  [ $v4       <int> %ebp-20 ]

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
    movl    $36352, %eax            #   0:     assign v4 <- 36352
    movl    %eax, -20(%ebp)        
l_f1_2_while_cond:
    call    dummyBOOLfunc           #   2:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     if     t3 = 1 goto 3_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_3_while_body      
    jmp     l_f1_1                  #   4:     goto   1
l_f1_3_while_body:
    jmp     l_f1_2_while_cond       #   6:     goto   2_while_cond
l_f1_1:
    movl    $30925, %eax            #   8:     if     30925 < 42412 goto 6_if_true
    movl    $42412, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_6_if_true         
    jmp     l_f1_7_if_false         #   9:     goto   7_if_false
l_f1_6_if_true:
l_f1_10_while_cond:
    jmp     l_f1_9                  #  12:     goto   9
    jmp     l_f1_10_while_cond      #  13:     goto   10_while_cond
l_f1_9:
    jmp     l_f1_14_if_false        #  15:     goto   14_if_false
    jmp     l_f1_12                 #  16:     goto   12
l_f1_14_if_false:
l_f1_12:
    call    dummyProcedure          #  19:     call   dummyProcedure
    jmp     l_f1_5                  #  20:     goto   5
l_f1_7_if_false:
l_f1_5:

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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]

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
    jmp     l_f2_exit              
    jmp     l_f2_exit              
    jmp     l_f2_7                  #   2:     goto   7
    movl    $1, %eax                #   3:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_8                  #   4:     goto   8
l_f2_7:
    movl    $0, %eax                #   6:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f2_8:
    movl    $0, %eax                #   8:     if     0 = t3 goto 3_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_3_if_true         
    jmp     l_f2_4_if_false         #   9:     goto   4_if_false
l_f2_3_if_true:
    call    ReadInt                 #  11:     call   t4 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $0, %eax                #  12:     if     0 = 1 goto 13_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_13_if_true        
    jmp     l_f2_14_if_false        #  13:     goto   14_if_false
l_f2_13_if_true:
    jmp     l_f2_12                 #  15:     goto   12
l_f2_14_if_false:
l_f2_12:
    jmp     l_f2_2                  #  18:     goto   2
l_f2_4_if_false:
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     param  0 <- t0
    pushl   %eax                   
    call    WriteChar               #   2:     call   WriteChar
    addl    $4, %esp               
l_test_2_while_cond:
    jmp     l_test_3_while_body     #   4:     goto   3_while_body
    jmp     l_test_1                #   5:     goto   1
l_test_3_while_body:
    movl    $96813, %eax            #   7:     if     96813 > 65200 goto 11_if_true
    movl    $65200, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_11_if_true      
    jmp     l_test_12_if_false      #   8:     goto   12_if_false
l_test_11_if_true:
    jmp     l_test_10               #  10:     goto   10
l_test_12_if_false:
l_test_10:
    movl    $0, %eax                #  13:     assign v0 <- 0
    movb    %al, v0                
    jmp     l_test_2_while_cond     #  14:     goto   2_while_cond
l_test_1:
l_test_16_while_cond:
    jmp     l_test_19               #  17:     goto   19
    jmp     l_test_20               #  18:     goto   20
l_test_19:
    movl    $1, %eax                #  20:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_21               #  21:     goto   21
l_test_20:
    movl    $0, %eax                #  23:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_21:
    movl    $0, %eax                #  25:     if     0 = t1 goto 17_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_17_while_body   
    jmp     l_test_15               #  26:     goto   15
l_test_17_while_body:
    jmp     l_test_16_while_cond    #  28:     goto   16_while_cond
l_test_15:
l_test_25_while_cond:
    jmp     l_test_24               #  31:     goto   24
l_test_28_while_cond:
    jmp     l_test_27               #  33:     goto   27
    jmp     l_test_28_while_cond    #  34:     goto   28_while_cond
l_test_27:
l_test_31_while_cond:
    movl    $1, %eax                #  37:     if     1 = 1 goto 32_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_32_while_body   
    jmp     l_test_30               #  38:     goto   30
l_test_32_while_body:
    jmp     l_test_31_while_cond    #  40:     goto   31_while_cond
l_test_30:
    call    ReadInt                 #  42:     call   t2 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $98, %eax               #  43:     param  2 <- 98
    pushl   %eax                   
    movl    $5387, %eax             #  44:     param  1 <- 5387
    pushl   %eax                   
    movl    $100, %eax              #  45:     param  0 <- 100
    pushl   %eax                   
    call    f2                      #  46:     call   f2
    addl    $12, %esp              
    jmp     l_test_25_while_cond    #  47:     goto   25_while_cond
l_test_24:
    jmp     l_test_exit            
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
