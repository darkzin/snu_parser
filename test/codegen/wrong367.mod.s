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
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]

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
    movl    $98, %eax               #   1:     if     98 <= 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
l_f0_5_while_cond:
    movl    $100, %eax              #   5:     if     100 < 97 goto 6_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_6_while_body      
    jmp     l_f0_4                  #   6:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #   8:     goto   5_while_cond
l_f0_4:
    movl    $0, %eax                #  10:     assign v1 <- 0
    movb    %al, 8(%ebp)           
    jmp     l_f0_1_while_cond       #  11:     goto   1_while_cond
l_f0_0:
    call    dummyBOOLfunc           #  13:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyBOOLfunc           #  14:     call   t4 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         

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
    #    -17(%ebp)   1  [ $t4       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t5       <char> %ebp-18 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]

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
    call    ReadInt                 #   0:     call   t3 <- ReadInt
    movl    %eax, -16(%ebp)        
    call    dummyCHARfunc           #   1:     call   t4 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    call    dummyCHARfunc           #   2:     call   t5 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #   3:     return t5
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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <bool> %ebp-15 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]

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
    movl    $1500, %eax             #   0:     if     1500 < 44347 goto 1_if_true
    movl    $44347, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    call    dummyCHARfunc           #   3:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f2_6_while_cond:
    movl    $97, %eax               #   5:     if     97 # 97 goto 7_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_7_while_body      
    jmp     l_f2_5                  #   6:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #   8:     goto   6_while_cond
l_f2_5:
    jmp     l_f2_0                  #  10:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_10_while_cond:
    call    dummyCHARfunc           #  14:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $98, %eax               #  15:     if     98 # t4 goto 11_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_11_while_body     
    jmp     l_f2_9                  #  16:     goto   9
l_f2_11_while_body:
    jmp     l_f2_10_while_cond      #  18:     goto   10_while_cond
l_f2_9:
    movl    $1, %eax                #  20:     if     1 = 0 goto 14_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_14_if_true        
    jmp     l_f2_15_if_false        #  21:     goto   15_if_false
l_f2_14_if_true:
    jmp     l_f2_18                 #  23:     goto   18
    jmp     l_f2_19                 #  24:     goto   19
l_f2_18:
    movl    $1, %eax                #  26:     assign t5 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_20                 #  27:     goto   20
l_f2_19:
    movl    $0, %eax                #  29:     assign t5 <- 0
    movb    %al, -15(%ebp)         
l_f2_20:
    movzbl  -15(%ebp), %eax         #  31:     assign v1 <- t5
    movb    %al, 8(%ebp)           
    jmp     l_f2_13                 #  32:     goto   13
l_f2_15_if_false:
l_f2_13:

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
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
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
    jmp     l_test_5                #   1:     goto   5
    movl    $1, %eax                #   2:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_6                #   3:     goto   6
l_test_5:
    movl    $0, %eax                #   5:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_6:
    movzbl  -13(%ebp), %eax         #   7:     if     t0 # 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_2_while_body    
    jmp     l_test_0                #   8:     goto   0
l_test_2_while_body:
l_test_9_while_cond:
    jmp     l_test_9_while_cond     #  11:     goto   9_while_cond
    jmp     l_test_1_while_cond     #  12:     goto   1_while_cond
l_test_0:
l_test_15_while_cond:
    jmp     l_test_14               #  15:     goto   14
    jmp     l_test_15_while_cond    #  16:     goto   15_while_cond
l_test_14:
    movl    $99, %eax               #  18:     if     99 < 100 goto 18_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_18_if_true      
    jmp     l_test_19_if_false      #  19:     goto   19_if_false
l_test_18_if_true:
    jmp     l_test_17               #  21:     goto   17
l_test_19_if_false:
l_test_17:
    jmp     l_test_11               #  24:     goto   11
l_test_11:
    movl    $100, %eax              #  26:     if     100 > 98 goto 22_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_22_if_true      
    jmp     l_test_23_if_false      #  27:     goto   23_if_false
l_test_22_if_true:
    movl    $22837, %eax            #  29:     if     22837 <= 54363 goto 26_if_true
    movl    $54363, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_26_if_true      
    jmp     l_test_27_if_false      #  30:     goto   27_if_false
l_test_26_if_true:
    jmp     l_test_25               #  32:     goto   25
l_test_27_if_false:
l_test_25:
    movl    $97, %eax               #  35:     assign v0 <- 97
    movb    %al, v0                
    jmp     l_test_exit            
    jmp     l_test_31               #  37:     goto   31
l_test_31:
    movl    $99, %eax               #  39:     if     99 <= 99 goto 35_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_35_if_true      
    jmp     l_test_36_if_false      #  40:     goto   36_if_false
l_test_35_if_true:
    jmp     l_test_34               #  42:     goto   34
l_test_36_if_false:
l_test_34:
    jmp     l_test_21               #  45:     goto   21
l_test_23_if_false:
l_test_21:
    call    dummyCHARfunc           #  48:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_41_if_false      #  49:     goto   41_if_false
    movl    $99, %eax               #  50:     if     99 < 99 goto 44_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_44_if_true      
    jmp     l_test_45_if_false      #  51:     goto   45_if_false
l_test_44_if_true:
    jmp     l_test_43               #  53:     goto   43
l_test_45_if_false:
l_test_43:
    jmp     l_test_exit            
    jmp     l_test_39               #  57:     goto   39
l_test_41_if_false:
l_test_39:
    call    dummyINTfunc            #  60:     call   t2 <- dummyINTfunc
    movl    %eax, -20(%ebp)        

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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
