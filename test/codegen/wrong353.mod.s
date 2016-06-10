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
l_f0_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   2:     if     97 <= t2 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    jmp     l_f0_exit              
    jmp     l_f0_1_while_cond       #   6:     goto   1_while_cond
l_f0_0:
l_f0_6_while_cond:
    movl    $100, %eax              #   9:     if     100 = 98 goto 7_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_7_while_body      
    jmp     l_f0_5                  #  10:     goto   5
l_f0_7_while_body:
    movl    $85962, %eax            #  12:     param  0 <- 85962
    pushl   %eax                   
    call    WriteInt                #  13:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f0_exit              
    jmp     l_f0_exit              
    jmp     l_f0_6_while_cond       #  16:     goto   6_while_cond
l_f0_5:
    movl    $52153, %eax            #  18:     if     52153 > 65665 goto 13_if_true
    movl    $65665, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_13_if_true        
    jmp     l_f0_14_if_false        #  19:     goto   14_if_false
l_f0_13_if_true:
l_f0_17_while_cond:
    jmp     l_f0_16                 #  22:     goto   16
    jmp     l_f0_17_while_cond      #  23:     goto   17_while_cond
l_f0_16:
l_f0_20_while_cond:
    jmp     l_f0_20_while_cond      #  26:     goto   20_while_cond
    call    dummyINTfunc            #  27:     call   t3 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
l_f0_24_while_cond:
    jmp     l_f0_24_while_cond      #  29:     goto   24_while_cond
    jmp     l_f0_12                 #  30:     goto   12
l_f0_14_if_false:
l_f0_12:

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t6       <bool> %ebp-29 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #    -30(%ebp)   1  [ $v1       <bool> %ebp-30 ]

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
    call    dummyProcedure          #   0:     call   dummyProcedure
    call    dummyCHARfunc           #   1:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     return t2
    jmp     l_f1_exit              
    movl    $16097, %eax            #   3:     div    t3 <- 16097, 85933
    movl    $85933, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    call    dummyINTfunc            #   4:     call   t4 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #   5:     div    t5 <- t3, t4
    movl    -24(%ebp), %ebx        
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     if     t5 <= 10264 goto 3
    movl    $10264, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_3                 
    jmp     l_f1_4                  #   7:     goto   4
l_f1_3:
    movl    $1, %eax                #   9:     assign t6 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f1_5                  #  10:     goto   5
l_f1_4:
    movl    $0, %eax                #  12:     assign t6 <- 0
    movb    %al, -29(%ebp)         
l_f1_5:
    movzbl  -29(%ebp), %eax         #  14:     assign v1 <- t6
    movb    %al, -30(%ebp)         

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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]

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
    call    dummyBOOLfunc           #   0:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f2_5_while_cond:
    jmp     l_f2_4                  #   2:     goto   4
    jmp     l_f2_5_while_cond       #   3:     goto   5_while_cond
l_f2_4:
    movl    $98, %eax               #   5:     if     98 > 99 goto 8_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_8_if_true         
    jmp     l_f2_9_if_false         #   6:     goto   9_if_false
l_f2_8_if_true:
    jmp     l_f2_7                  #   8:     goto   7
l_f2_9_if_false:
l_f2_7:
    jmp     l_f2_1                  #  11:     goto   1
l_f2_1:
    jmp     l_f2_exit              

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
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    movl    $97, %eax               #   1:     if     97 >= 97 goto 4_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_4_if_true       
    jmp     l_test_5_if_false       #   2:     goto   5_if_false
l_test_4_if_true:
    jmp     l_test_3                #   4:     goto   3
l_test_5_if_false:
l_test_3:
    call    dummyCHARfunc           #   7:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    WriteLn                 #   8:     call   WriteLn
    jmp     l_test_0                #   9:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_16               #  14:     goto   16
    movl    $1, %eax                #  15:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_17               #  16:     goto   17
l_test_16:
    movl    $0, %eax                #  18:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_17:
    movl    $1, %eax                #  20:     if     1 # t1 goto 12_if_true
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_12_if_true      
    jmp     l_test_13_if_false      #  21:     goto   13_if_false
l_test_12_if_true:
    jmp     l_test_22_if_false      #  23:     goto   22_if_false
    jmp     l_test_20               #  24:     goto   20
l_test_22_if_false:
l_test_20:
    jmp     l_test_exit            
l_test_25_while_cond:
    jmp     l_test_25_while_cond    #  29:     goto   25_while_cond
    jmp     l_test_27               #  30:     goto   27
l_test_27:
    jmp     l_test_exit            
l_test_32_while_cond:
    jmp     l_test_32_while_cond    #  34:     goto   32_while_cond
    jmp     l_test_11               #  35:     goto   11
l_test_13_if_false:
l_test_11:

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
