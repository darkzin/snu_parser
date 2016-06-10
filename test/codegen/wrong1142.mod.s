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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #    -14(%ebp)   1  [ $v3       <char> %ebp-14 ]

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
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t1
    jmp     l_f0_exit              
l_f0_2_while_cond:
    jmp     l_f0_3_while_body       #   3:     goto   3_while_body
l_f0_3_while_body:
    jmp     l_f0_2_while_cond       #   5:     goto   2_while_cond
    movl    $98, %eax               #   6:     assign v3 <- 98
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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <bool> %ebp-15 ]

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
    movl    $30211, %eax            #   0:     if     30211 > 96347 goto 1
    movl    $96347, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_1                 
    jmp     l_f1_2                  #   1:     goto   2
l_f1_1:
    movl    $1, %eax                #   3:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   4:     goto   3
l_f1_2:
    movl    $0, %eax                #   6:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   8:     param  0 <- t1
    pushl   %eax                   
    call    f0                      #   9:     call   t2 <- f0
    addl    $4, %esp               
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  10:     return t2
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #  11:     call   t3 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    call    dummyProcedure          #  12:     call   dummyProcedure

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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]

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
    call    dummyBOOLfunc           #   0:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   1:     call   t2 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $100, %eax              #   2:     return 100
    jmp     l_f2_exit              
l_f2_7_while_cond:
    movl    $47669, %eax            #   4:     if     47669 < 76991 goto 8_while_body
    movl    $76991, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_8_while_body      
    jmp     l_f2_6                  #   5:     goto   6
l_f2_8_while_body:
    jmp     l_f2_7_while_cond       #   7:     goto   7_while_cond
l_f2_6:
    movl    $3095, %eax             #   9:     if     3095 <= 24774 goto 11_if_true
    movl    $24774, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_11_if_true        
    jmp     l_f2_12_if_false        #  10:     goto   12_if_false
l_f2_11_if_true:
    jmp     l_f2_10                 #  12:     goto   10
l_f2_12_if_false:
l_f2_10:
    jmp     l_f2_0                  #  15:     goto   0
l_f2_0:
l_f2_15_while_cond:
    movl    $74274, %eax            #  18:     sub    t3 <- 74274, 1271
    movl    $1271, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $84422, %eax            #  19:     if     84422 > t3 goto 16_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_16_while_body     
    jmp     l_f2_14                 #  20:     goto   14
l_f2_16_while_body:
    jmp     l_f2_15_while_cond      #  22:     goto   15_while_cond
l_f2_14:
    movl    $1, %eax                #  24:     if     1 # 0 goto 19_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_19_if_true        
    jmp     l_f2_20_if_false        #  25:     goto   20_if_false
l_f2_19_if_true:
    movl    $97, %eax               #  27:     return 97
    jmp     l_f2_exit              
l_f2_24_while_cond:
    movl    $99, %eax               #  29:     if     99 <= 98 goto 25_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_25_while_body     
    jmp     l_f2_23                 #  30:     goto   23
l_f2_25_while_body:
l_f2_28_while_cond:
    movl    $100, %eax              #  33:     if     100 < 97 goto 29_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_29_while_body     
    jmp     l_f2_27                 #  34:     goto   27
l_f2_29_while_body:
    jmp     l_f2_28_while_cond      #  36:     goto   28_while_cond
l_f2_27:
    jmp     l_f2_24_while_cond      #  38:     goto   24_while_cond
l_f2_23:
    jmp     l_f2_18                 #  40:     goto   18
l_f2_20_if_false:
l_f2_18:

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]

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
    movl    $97, %eax               #   0:     if     97 > 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
l_test_5_while_cond:
    jmp     l_test_4                #   4:     goto   4
    jmp     l_test_5_while_cond     #   5:     goto   5_while_cond
l_test_4:
    movl    $1, %eax                #   7:     if     1 # 0 goto 8_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_8_if_true       
    jmp     l_test_9_if_false       #   8:     goto   9_if_false
l_test_8_if_true:
    jmp     l_test_7                #  10:     goto   7
l_test_9_if_false:
l_test_7:
    movl    $97, %eax               #  13:     if     97 < 99 goto 12
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_12              
    jmp     l_test_13               #  14:     goto   13
l_test_12:
    movl    $1, %eax                #  16:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_14               #  17:     goto   14
l_test_13:
    movl    $0, %eax                #  19:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_14:
    movzbl  -13(%ebp), %eax         #  21:     assign v0 <- t0
    movb    %al, v0                
    movl    $98, %eax               #  22:     assign v1 <- 98
    movb    %al, v1                
l_test_18_while_cond:
    jmp     l_test_18_while_cond    #  24:     goto   18_while_cond
    jmp     l_test_0                #  25:     goto   0
l_test_2_if_false:
l_test_0:
l_test_21_while_cond:
    jmp     l_test_20               #  29:     goto   20
l_test_24_while_cond:
    movl    $100, %eax              #  31:     if     100 <= 98 goto 25_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_25_while_body   
    jmp     l_test_23               #  32:     goto   23
l_test_25_while_body:
    jmp     l_test_24_while_cond    #  34:     goto   24_while_cond
l_test_23:
    jmp     l_test_exit            
    jmp     l_test_21_while_cond    #  37:     goto   21_while_cond
l_test_20:
    jmp     l_test_exit            
    jmp     l_test_exit            
l_test_31_while_cond:
    jmp     l_test_30               #  42:     goto   30
    jmp     l_test_31_while_cond    #  43:     goto   31_while_cond
l_test_30:

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
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
