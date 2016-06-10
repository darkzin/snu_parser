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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t7       <bool> %ebp-33 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 20 of <array 37 of <array 97 of <array 60 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f0_1_while_cond:
    jmp     l_f0_0                  #   1:     goto   0
    movl    $7312, %eax             #   2:     if     7312 = 1906 goto 4
    movl    $1906, %ebx            
    cmpl    %ebx, %eax             
    je      l_f0_4                 
    jmp     l_f0_5                  #   3:     goto   5
l_f0_4:
    movl    $1, %eax                #   5:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_6                  #   6:     goto   6
l_f0_5:
    movl    $0, %eax                #   8:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f0_6:
    movzbl  -13(%ebp), %eax         #  10:     return t1
    jmp     l_f0_exit              
    call    dummyCHARfunc           #  11:     call   t2 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $91529, %eax            #  12:     if     91529 <= 51431 goto 10_if_true
    movl    $51431, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_10_if_true        
    jmp     l_f0_11_if_false        #  13:     goto   11_if_false
l_f0_10_if_true:
    jmp     l_f0_9                  #  15:     goto   9
l_f0_11_if_false:
l_f0_9:
    call    ReadInt                 #  18:     call   t3 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $1324, %eax             #  19:     assign v1 <- 1324
    movl    %eax, 12(%ebp)         
    movl    $1, %eax                #  20:     return 1
    jmp     l_f0_exit              
l_f0_17_while_cond:
    movl    $99, %eax               #  22:     if     99 < 98 goto 18_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_18_while_body     
    jmp     l_f0_16                 #  23:     goto   16
l_f0_18_while_body:
    jmp     l_f0_17_while_cond      #  25:     goto   17_while_cond
l_f0_16:
    jmp     l_f0_20                 #  27:     goto   20
l_f0_20:
l_f0_24_while_cond:
    jmp     l_f0_23                 #  30:     goto   23
    jmp     l_f0_24_while_cond      #  31:     goto   24_while_cond
l_f0_23:
    movl    $100, %eax              #  33:     if     100 = 97 goto 27_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_27_if_true        
    jmp     l_f0_28_if_false        #  34:     goto   28_if_false
l_f0_27_if_true:
    jmp     l_f0_26                 #  36:     goto   26
l_f0_28_if_false:
l_f0_26:
    jmp     l_f0_1_while_cond       #  39:     goto   1_while_cond
l_f0_0:
    call    dummyINTfunc            #  41:     call   t4 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    $52110, %eax            #  42:     div    t5 <- 52110, 86925
    movl    $86925, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  43:     add    t6 <- t5, 24967
    movl    $24967, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $66571, %eax            #  44:     if     66571 > t6 goto 32
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_32                
    jmp     l_f0_33                 #  45:     goto   33
l_f0_32:
    movl    $1, %eax                #  47:     assign t7 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f0_34                 #  48:     goto   34
l_f0_33:
    movl    $0, %eax                #  50:     assign t7 <- 0
    movb    %al, -33(%ebp)         
l_f0_34:
    movzbl  -33(%ebp), %eax         #  52:     return t7
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
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
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   1:     return 99
    jmp     l_f1_exit              
    call    ReadInt                 #   2:     call   t2 <- ReadInt
    movl    %eax, -20(%ebp)        

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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $v0       <char> %ebp-25 ]

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
    call    f1                      #   0:     call   t1 <- f1
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t1
    movb    %al, -25(%ebp)         
    call    dummyProcedure          #   2:     call   dummyProcedure
    call    dummyINTfunc            #   3:     call   t2 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $56958, %eax            #   4:     div    t3 <- 56958, t2
    movl    -20(%ebp), %ebx        
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     return t3
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_3_if_true        #   2:     goto   3_if_true
    jmp     l_test_3_if_true        #   3:     goto   3_if_true
    jmp     l_test_4_if_false       #   4:     goto   4_if_false
l_test_3_if_true:
l_test_9_while_cond:
    jmp     l_test_8                #   7:     goto   8
    jmp     l_test_9_while_cond     #   8:     goto   9_while_cond
l_test_8:
    movl    $44631, %eax            #  10:     if     44631 = 48643 goto 12
    movl    $48643, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_12              
    jmp     l_test_13               #  11:     goto   13
l_test_12:
    movl    $1, %eax                #  13:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_14               #  14:     goto   14
l_test_13:
    movl    $0, %eax                #  16:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_14:
    movzbl  -13(%ebp), %eax         #  18:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_2                #  19:     goto   2
l_test_4_if_false:
l_test_2:
    jmp     l_test_exit            

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
