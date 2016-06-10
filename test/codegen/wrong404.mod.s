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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t7       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t8       <char> %ebp-30 ]
    #    -36(%ebp)   4  [ $t9       <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <char> %ebp+20 ]

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
    jmp     l_f0_1_if_true          #   0:     goto   1_if_true
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    movl    $22102, %eax            #   3:     if     22102 < 8878 goto 6
    movl    $8878, %ebx            
    cmpl    %ebx, %eax             
    jl      l_f0_6                 
    jmp     l_f0_7                  #   4:     goto   7
l_f0_6:
    movl    $1, %eax                #   6:     assign t7 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f0_8                  #   7:     goto   8
l_f0_7:
    movl    $0, %eax                #   9:     assign t7 <- 0
    movb    %al, -29(%ebp)         
l_f0_8:
    movzbl  -29(%ebp), %eax         #  11:     assign v3 <- t7
    movb    %al, 16(%ebp)          
    call    dummyCHARfunc           #  12:     call   t8 <- dummyCHARfunc
    movb    %al, -30(%ebp)         
    jmp     l_f0_0                  #  13:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $97, %eax               #  16:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #  17:     call   WriteChar
    addl    $4, %esp               
l_f0_13_while_cond:
    movl    $99282, %eax            #  19:     add    t9 <- 99282, 85777
    movl    $85777, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  20:     add    t10 <- t9, 3383
    movl    $3383, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  21:     sub    t11 <- t10, 51214
    movl    $51214, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  22:     add    t12 <- t11, 68858
    movl    $68858, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  23:     sub    t13 <- t12, 50897
    movl    $50897, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $16336, %eax            #  24:     if     16336 # t13 goto 14_while_body
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_14_while_body     
    jmp     l_f0_12                 #  25:     goto   12
l_f0_14_while_body:
    jmp     l_f0_13_while_cond      #  27:     goto   13_while_cond
l_f0_12:

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
    #    -13(%ebp)   1  [ $t7       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t9       <bool> %ebp-15 ]
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
    call    dummyCHARfunc           #   0:     call   t7 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t7
    jmp     l_f1_exit              
    jmp     l_f1_6                  #   2:     goto   6
    jmp     l_f1_7                  #   3:     goto   7
    jmp     l_f1_7                  #   4:     goto   7
l_f1_6:
    movl    $1, %eax                #   6:     assign t8 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_8                  #   7:     goto   8
l_f1_7:
    movl    $0, %eax                #   9:     assign t8 <- 0
    movb    %al, -14(%ebp)         
l_f1_8:
    movzbl  -14(%ebp), %eax         #  11:     if     t8 = 1 goto 2
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_2                 
    jmp     l_f1_3                  #  12:     goto   3
l_f1_2:
    movl    $1, %eax                #  14:     assign t9 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_4                  #  15:     goto   4
l_f1_3:
    movl    $0, %eax                #  17:     assign t9 <- 0
    movb    %al, -15(%ebp)         
l_f1_4:
    movzbl  -15(%ebp), %eax         #  19:     assign v1 <- t9
    movb    %al, 8(%ebp)           
l_f1_13_while_cond:
    jmp     l_f1_12                 #  21:     goto   12
    movl    $100, %eax              #  22:     if     100 > 97 goto 16_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_16_if_true        
    jmp     l_f1_17_if_false        #  23:     goto   17_if_false
l_f1_16_if_true:
    jmp     l_f1_15                 #  25:     goto   15
l_f1_17_if_false:
l_f1_15:
l_f1_20_while_cond:
    movl    $17826, %eax            #  29:     if     17826 # 14936 goto 21_while_body
    movl    $14936, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_21_while_body     
    jmp     l_f1_19                 #  30:     goto   19
l_f1_21_while_body:
    jmp     l_f1_20_while_cond      #  32:     goto   20_while_cond
l_f1_19:
    jmp     l_f1_13_while_cond      #  34:     goto   13_while_cond
l_f1_12:

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t7       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t8       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t9       <char> %ebp-19 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]

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
l_f2_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t7 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   2:     if     t7 = 1 goto 9
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_9                 
    jmp     l_f2_5                  #   3:     goto   5
l_f2_9:
    jmp     l_f2_5                  #   5:     goto   5
    jmp     l_f2_5                  #   6:     goto   5
    jmp     l_f2_5                  #   7:     goto   5
    movl    $1, %eax                #   8:     assign t8 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f2_6                  #   9:     goto   6
l_f2_5:
    movl    $0, %eax                #  11:     assign t8 <- 0
    movb    %al, -18(%ebp)         
l_f2_6:
    movl    $0, %eax                #  13:     if     0 = t8 goto 2_while_body
    movzbl  -18(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_2_while_body      
    jmp     l_f2_0                  #  14:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #  16:     goto   1_while_cond
l_f2_0:
    jmp     l_f2_12_if_false        #  18:     goto   12_if_false
l_f2_14_while_cond:
    call    dummyCHARfunc           #  20:     call   t9 <- dummyCHARfunc
    movb    %al, -19(%ebp)         
    movl    $98, %eax               #  21:     if     98 < t9 goto 15_while_body
    movzbl  -19(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_15_while_body     
    jmp     l_f2_13                 #  22:     goto   13
l_f2_15_while_body:
    jmp     l_f2_14_while_cond      #  24:     goto   14_while_cond
l_f2_13:
    jmp     l_f2_10                 #  26:     goto   10
l_f2_12_if_false:
l_f2_10:
    call    ReadInt                 #  29:     call   t10 <- ReadInt
    movl    %eax, -16(%ebp)        

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
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]

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
l_test_1_while_cond:
    movl    $65305, %eax            #   1:     if     65305 < 67563 goto 2_while_body
    movl    $67563, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    movl    $97, %eax               #   4:     assign v0 <- 97
    movb    %al, v0                
    jmp     l_test_1_while_cond     #   5:     goto   1_while_cond
l_test_0:
    movl    $99, %eax               #   7:     param  3 <- 99
    pushl   %eax                   
    movl    $100, %eax              #   8:     if     100 > 98 goto 6
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_6               
    jmp     l_test_7                #   9:     goto   7
l_test_6:
    movl    $1, %eax                #  11:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_8                #  12:     goto   8
l_test_7:
    movl    $0, %eax                #  14:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_8:
    movzbl  -13(%ebp), %eax         #  16:     param  2 <- t0
    pushl   %eax                   
    call    dummyCHARfunc           #  17:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  18:     param  1 <- t1
    pushl   %eax                   
    movl    $23127, %eax            #  19:     param  0 <- 23127
    pushl   %eax                   
    call    f0                      #  20:     call   t2 <- f0
    addl    $16, %esp              
    movb    %al, -15(%ebp)         
    movl    $28208, %eax            #  21:     assign v1 <- 28208
    movl    %eax, v1               
    jmp     l_test_10               #  22:     goto   10
l_test_10:
    movl    $22592, %eax            #  24:     sub    t3 <- 22592, 53887
    movl    $53887, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  25:     sub    t4 <- t3, 91281
    movl    $91281, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  26:     add    t5 <- t4, 75917
    movl    $75917, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  27:     add    t6 <- t5, 9560
    movl    $9560, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  28:     assign v1 <- t6
    movl    %eax, v1               

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
